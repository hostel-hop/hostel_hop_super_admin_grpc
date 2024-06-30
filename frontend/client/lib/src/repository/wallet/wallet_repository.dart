import 'package:dartz/dartz.dart';
import 'package:hostel_hop_super_admin/src/generated/wallet.pbgrpc.dart';
import 'package:hostel_hop_super_admin/src/repository/wallet/i_wallet_repository.dart';
import 'package:hostel_hop_super_admin/src/shared/util/failure.dart';
import 'package:injectable/injectable.dart';

@named
@Singleton(as: IWalletRepository)
class WalletRepository implements IWalletRepository {
  final WalletsClient _client;

  WalletRepository(this._client);

  @override
  Future<Either<Failure, GetWalletsResponse>> list([String query = '']) async {
    try {
      final response = await _client.getWallets(GetWalletsRequest(
        query: query,
      ));

      return right(response);
    } catch (e) {
      return left(ServerFailure(message: e.toString()));
    }
  }
}
