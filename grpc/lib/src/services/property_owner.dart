import 'dart:convert';

import 'package:dotenv/dotenv.dart';
import 'package:grpc/grpc.dart';
import 'package:hostel_hop_grpc/src/generated/property_owners.pbgrpc.dart';
import 'package:hostel_hop_grpc/src/mixins/skyflow_generate_bearer_token.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:mongo_dart/mongo_dart.dart';

@singleton
class PropertyOwnersService extends PropertyOwnersServiceBase
    with SkyflowGenerateBearerToken {
  final Db _db;

  final String _vaultId;
  final String _vaultUrl;
  final String table = 'property_owners';
  final String secretName = 'SKYFLOW_SERVICE_ACCOUNT';

  PropertyOwnersService(this._db, DotEnv env)
      : _vaultId = env['SKYFLOW_VAULT_ID']!,
        _vaultUrl = env['SKYFLOW_VAULT_URL']!;

  DbCollection get _propertyOwners => _db.collection('propertyowners');

  @override
  Future<GetPropertyOwnersResponse> getPropertyOwners(
      ServiceCall call, GetPropertyOwnersRequest request) async {
    final bearerToken = await generateBearerToken(secretName);

    final response = await http.get(
      Uri.parse('$_vaultUrl/v1/vaults/$_vaultId/$table'),
      headers: {
        'Authorization': 'Bearer ${bearerToken}',
      },
    );

    final json = jsonDecode(response.body);

    final records = json['records'] as List;

    final propertyOwners = records.map((record) {
      final fields = record['fields'] as Map<String, dynamic>;

      return PropertyOwner(
        skyflowId: fields['skyflow_id'],
        firstName: fields['first_name'],
        lastName: fields['last_name'],
        email: fields['email'],
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
      final bearerToken = await generateBearerToken(secretName);

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
  Future<UpdatePropertyOwnerPasswordResponse> updatePropertyOwnerPassword(
      ServiceCall call, UpdatePropertyOwnerPasswordRequest request) async {
    try {
      final owner = await _propertyOwners.findOne(
        where.eq(
          '_id',
          request.hostelHopId,
        ),
      );

      if (owner == null) {
        return Future.error('Property owner not found');
      }

      await _propertyOwners.updateOne(
        where.eq(
          '_id',
          request.hostelHopId,
        ),
        modify.set(
          'authenticationInfo.password',
          request.password,
        ),
      );

      return UpdatePropertyOwnerPasswordResponse();
    } catch (e) {
      return Future.error(e);
    }
  }
}
