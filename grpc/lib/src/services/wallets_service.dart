import 'package:grpc/src/server/call.dart';
import 'package:hostel_hop_grpc/src/generated/wallet.pbgrpc.dart';
import 'package:injectable/injectable.dart';
import 'package:mongo_dart/mongo_dart.dart';

@singleton
class WalletsService extends WalletsServiceBase {
  final Db _db;

  WalletsService(this._db);

  DbCollection get _walletsCollection => _db.collection('wallets');

  @override
  Future<GetWalletsResponse> getWallets(
      ServiceCall call, GetWalletsRequest request) async {
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
      'balanceNoOfWithdrawableCredits': 1,
      'balanceNoOfNonWithdrawableCredits': 1,
      'balanceNoOfPendingWithdrawableCredits': 1,
      'balanceNOOfPendingNonWithdrawableCredits': 1,
    }));
    final pipeline = aggregationBuilder.build();
    final docs = await _walletsCollection.modernAggregate(pipeline).toList();

    final wallets = docs.map((doc) {
      return Wallet(
        backpackerId: (doc['backpacker']['_id'] as ObjectId).toHexString(),
        username: doc['backpacker']['username'],
        balanceOfNonWithdrawableCredits: doc['balanceNoOfWithdrawableCredits'],
        balanceOfWithdrawableCredits: doc['balanceNoOfNonWithdrawableCredits'],
        balanceOfPendingNonWithdrawableCredits:
            doc['balanceNoOfPendingWithdrawableCredits'],
        balanceOfPendingWithdrawableCredits:
            doc['balanceNOOfPendingNonWithdrawableCredits'],
      );
    });

    return Future.value(GetWalletsResponse(wallets: wallets));
  }

  @override
  Future<GetWalletResponse> getWallet(
      ServiceCall call, GetWalletRequest request) async {
    final wallets = await _walletsCollection.find().toList();

    print(wallets);

    return Future.value(GetWalletResponse());
  }

  @override
  Future<UpdateWithdrawableCreditBalanceResponse> updateWithdrawableCreditBalance(
      ServiceCall call, UpdateWithdrawableCreditBalanceRequest request) async {

        try {

    final backpackerId = request.backpackerId;

    final update = await _walletsCollection.updateOne(
      where.eq('backpacker', ObjectId.fromHexString(backpackerId)),
      modify.inc('balanceNoOfWithdrawableCredits', request.addedCredits),
    );

    if (update.isFailure) {
      return Future.error('Failed to update balance');
    }

    return UpdateWithdrawableCreditBalanceResponse();
      } catch (e) {
      return Future.error(e);
    }

  }

  @override 
  Future<UpdateNonWithdrawableCreditResponse> updateNonWithdrawableCreditBalance(
      ServiceCall call, UpdateNonWithdrawableCreditBalanceRequest request) async {

        try {

    final backpackerId = request.backpackerId;

    final update = await _walletsCollection.updateOne(
      where.eq('backpacker', ObjectId.fromHexString(backpackerId)),
      modify.inc('balanceNoOfNonWithdrawableCredits', request.addedCredits),
    );

    if (update.isFailure) {
      return Future.error('Failed to update balance');
    }

    return UpdateNonWithdrawableCreditResponse();
      } catch (e) {
      return Future.error(e);
    }

  }

}
