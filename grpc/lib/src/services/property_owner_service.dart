import 'dart:convert';

import 'package:bcrypt/bcrypt.dart';
import 'package:dotenv/dotenv.dart';
import 'package:grpc/grpc.dart' hide Response;
import 'package:hostel_hop_grpc/src/generated/property_owners.pbgrpc.dart';
import 'package:hostel_hop_grpc/src/mixins/skyflow_generate_bearer_token.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:injectable/injectable.dart';
import 'package:mongo_dart/mongo_dart.dart';

@singleton
class PropertyOwnersService extends PropertyOwnersServiceBase
    with SkyflowGenerateBearerToken {
  final Db _db;

  final String _vaultId;
  final String _vaultUrl;
  final String table = 'property_owners';

  PropertyOwnersService(this._db, DotEnv env)
      : _vaultId = env['SKYFLOW_VAULT_ID']!,
        _vaultUrl = env['SKYFLOW_VAULT_URL']!;

  DbCollection get _propertyOwners => _db.collection('propertyowners');

  @override
  Future<GetPropertyOwnersResponse> getPropertyOwners(
      ServiceCall call, GetPropertyOwnersRequest request) async {
    final bearerToken = await generateBearerToken();

    final query = request.query;
    late final Response response;

    if (query.isEmpty) {
      response = await http.get(
        Uri.parse('$_vaultUrl/v1/vaults/$_vaultId/$table'),
        headers: {
          'Authorization': 'Bearer ${bearerToken}',
        },
      );
    } else {
      // search on first_name, last_name, email, hostel_hop_id for exact matches no likes
      final sqlQuery =
          "SELECT * FROM $table WHERE email = '$query' OR first_name = '$query' OR last_name = '$query' OR hostel_hop_id = '$query'";

      final json = {
        'query': sqlQuery,
      };

      final body = jsonEncode(json);

      response = await http.post(
        Uri.parse('$_vaultUrl/v1/vaults/$_vaultId/query'),
        headers: {
          'Authorization': 'Bearer ${bearerToken}',
          'Content-Type': 'application/json',
        },
        body: body,
      );
    }

    final json = jsonDecode(response.body);

    if (json['error'] != null) {
      final code = json['error']['http_code'];

      if (code == 404) {
        return GetPropertyOwnersResponse();
      }

      throw GrpcError.internal(json['error']);
    }

    final records = json['records'] as List;

    final propertyOwners = records.map((record) {
      final fields = record['fields'] as Map<String, dynamic>;

      return PropertyOwner(
        skyflowId: fields['skyflow_id'],
        firstName: fields['first_name'],
        lastName: fields['last_name'],
        email: fields['email'],
        hostelHopId: fields['hostel_hop_id'],
      );
    }).toList();

    return GetPropertyOwnersResponse(
      owners: propertyOwners,
    );
  }

  // update property owner
  @override
  Future<UpdatePropertyOwnerResponse> updatePropertyOwner(
    ServiceCall call,
    UpdatePropertyOwnerRequest request,
  ) async {
    try {
      final bearerToken = await generateBearerToken();

      final body = {
        'record': {
          'fields': {
            'first_name': request.firstName,
            'last_name': request.lastName,
            'email': request.email,
          }
        },
        'tokenization': true,
      };

      await http.put(
        Uri.parse('$_vaultUrl/v1/vaults/$_vaultId/$table/${request.skyflowId}'),
        headers: {
          'Authorization': 'Bearer ${bearerToken}',
          'Content-Type': 'application/json',
        },
        body: body,
      );

      return UpdatePropertyOwnerResponse();
    } catch (e) {
      throw GrpcError.internal(e.toString());
    }
  }

  @override
  Future<UpdatePropertyOwnerEmailResponse> updatePropertyOwnerEmail(
    ServiceCall call,
    UpdatePropertyOwnerEmailRequest request,
  ) async {
    try {
      final bearerToken = await generateBearerToken();

      final json = {
        'record': {
          'fields': {
            'email': request.email,
          }
        },
        'tokenization': true,
      };

      final body = jsonEncode(json);

      final response = await http.put(
        Uri.parse('$_vaultUrl/v1/vaults/$_vaultId/$table/${request.skyflowId}'),
        headers: {
          'Authorization': 'Bearer ${bearerToken}',
          'Content-Type': 'application/json',
        },
        body: body,
      );

      final data = jsonDecode(response.body);

      if (data['error'] != null) {

        throw GrpcError.internal(data['error']);
      }

      return UpdatePropertyOwnerEmailResponse();
    } catch (e) {
      throw GrpcError.internal(e.toString());
    }
  }

  @override
  Future<UpdatePropertyOwnerPasswordResponse> updatePropertyOwnerPassword(
      ServiceCall call, UpdatePropertyOwnerPasswordRequest request) async {
    try {
      final owner = await _propertyOwners.findOne(
        where.eq(
          '_id',
          ObjectId.fromHexString(request.hostelHopId),
        ),
      );

      if (owner == null) {
        return Future.error('Property owner not found');
      }

      final encryptedPassword = _encryptPasswordBcrypt(request.password);

      final update = await _propertyOwners.updateOne(
        where.eq(
          '_id',
          ObjectId.fromHexString(request.hostelHopId),
        ),
        modify.set(
          'authenticationInfo.password',
          encryptedPassword,
        ),
      );

      if (update.isFailure) {
        return Future.error('Failed to update password');
      }

      return UpdatePropertyOwnerPasswordResponse();
    } catch (e) {
      return Future.error(e);
    }
  }

  String _encryptPasswordBcrypt(String password) {
    return BCrypt.hashpw(password, BCrypt.gensalt());
  }
}
