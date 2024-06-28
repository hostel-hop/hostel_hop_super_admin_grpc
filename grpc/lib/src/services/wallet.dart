import 'package:grpc/src/server/call.dart';
import 'package:hostel_hop_grpc/src/generated/Wallet.pbgrpc.dart';
import 'package:injectable/injectable.dart';
import 'package:mongo_dart/mongo_dart.dart';

@singleton
class WalletsService extends WalletsServiceBase {
  final Db _db;

  WalletsService(this._db);

  DbCollection get _walletsCollection => _db.collection('wallets');

  @override
  Future<GetWalletResponse> getWallet(
      ServiceCall call, GetWalletRequest request) async {
    final wallets = await _walletsCollection.find().toList();

    print(wallets);

    return Future.value(GetWalletResponse());
  }
}
