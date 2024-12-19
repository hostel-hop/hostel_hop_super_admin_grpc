import 'dart:convert';

import 'package:dotenv/dotenv.dart';
import 'package:get_it/get_it.dart';
import 'package:grpc/grpc.dart' hide Response;
import 'package:hostel_hop_grpc/src/generated/ambassador.pbgrpc.dart';
import 'package:hostel_hop_grpc/src/mixins/skyflow_generate_bearer_token.dart';
import 'package:injectable/injectable.dart';
import 'package:mongo_dart/mongo_dart.dart';
import 'package:http/http.dart' as http;

@singleton
class AmbassadorService extends AmbassadorsServiceBase
    with SkyflowGenerateBearerToken {
  final Db _db;
  final String _vaultId;
  final String _vaultUrl;
  final String table = 'backpackers';

  AmbassadorService(this._db, DotEnv env)
      : _vaultId = env['SKYFLOW_VAULT_ID']!,
        _vaultUrl = env['SKYFLOW_VAULT_URL']!;

  DbCollection get _referralCollection => _db.collection('referrals');
  final String credentialsEncoded = GetIt.instance
      .get<DotEnv>()['BACKPACKER_SKYFLOW_SERVICE_ACCOUNT_BASE_64']!;

  @override
  Future<GetReferralsResponse> getReferrals(
      ServiceCall call, GetReferralsRequest request) async {
    final query = request.query;
    var aggregationBuilder = AggregationPipelineBuilder()
        .addStage(Lookup(
            from: 'backpackers',
            localField: 'backpacker',
            foreignField: '_id',
            as: 'backpacker'))
        .addStage(Unwind(
          Field('backpacker'),
        ));

    if (query.isNotEmpty) {
      aggregationBuilder = aggregationBuilder.addStage(
          Match(where.eq('backpacker.username', '$query').map['\$query']));
    } else {
      aggregationBuilder = aggregationBuilder.addStage(Limit(20));
    }

    aggregationBuilder = aggregationBuilder.addStage(Project({
      'backpacker.username': 1,
      'backpacker._id': 1,
      'type': 1,
      'code': 1,
    }));
    final pipeline = aggregationBuilder.build();
    final docs = await _referralCollection.modernAggregate(pipeline).toList();

    final referrals = docs.map((doc) {
      return Referral(
        backpackerId: (doc['backpacker']['_id'] as ObjectId).toHexString(),
        type: doc['type'],
        code: doc['code'],
        username: doc['backpacker']['username'],
      );
    });

    return Future.value(GetReferralsResponse(referrals: referrals));
  }

  @override
  Future<ChangeAmbassadorStatusResponse> changeAmbassadorStatus(
      ServiceCall call, ChangeAmbassadorStatusRequest request) async {
    final newType = request.type == 1 ? 0 : 1;

    await _referralCollection.updateOne(
      where.eq(
        'backpacker',
        ObjectId.fromHexString(request.backpackerId),
      ),
      modify.set(
        'type',
        newType,
      ),
    );
    return ChangeAmbassadorStatusResponse();
  }

  @override
  Future<CsvResponse> getAmbassadorCsv(ServiceCall call, CsvRequest request) {
    // TODO: implement getAmbassadorCsv
    throw UnimplementedError();
  }

  @override
  Future<CsvResponse> getBackpackersCsv(
      ServiceCall call, CsvRequest request) async {
    try {
      final bearerToken = await generateBearerToken(credentialsEncoded);

      int offset = 0;
      List records = [];
      bool hasMore = true;

      while (hasMore) {
        try {
          final http.Response response = await http.get(
            Uri.parse('$_vaultUrl/v1/vaults/$_vaultId/$table?offset=$offset'),
            headers: {
              'Authorization': 'Bearer ${bearerToken}',
            },
          );

          final json = jsonDecode(response.body);

          if (json['error'] != null) {
            hasMore = false;
          } else {
            offset += 25;

            records.addAll(json['records'] as List);
          }
        } catch (e) {
          print(e);
          hasMore = false;
        }
      }

      if (records.isEmpty) {
        return CsvResponse();
      }

      final backpackers = records.map((record) {
        final fields = record['fields'] as Map<String, dynamic>;

        return {
          'email': fields['email'],
        };
      }).toList();

      final csvRows = backpackers.map((backpacker) {
        return '${backpacker['email']}';
      });

      // add column email header to csv
      final csv = [
        'email',
        ...csvRows,
      ].join('\n').codeUnits;

      return CsvResponse()..csvData = csv;
    } catch (e) {
      print(e);
      throw GrpcError.internal(e.toString());
    }
  }
}
