import 'package:grpc/src/server/call.dart';
import 'package:hostel_hop_grpc/src/generated/ambassador.pbgrpc.dart';
import 'package:injectable/injectable.dart';
import 'package:mongo_dart/mongo_dart.dart';

@singleton
class AmbassadorService extends AmbassadorsServiceBase {
  final Db _db;

  AmbassadorService(this._db);

  DbCollection get _referralCollection => _db.collection('referrals');

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

    final update = await _referralCollection.updateOne(
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
}
