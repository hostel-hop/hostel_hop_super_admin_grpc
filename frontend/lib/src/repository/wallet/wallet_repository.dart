import 'package:hostel_hop_super_admin/src/generated/wallet.pbgrpc.dart';
import 'package:injectable/injectable.dart';

@singleton
class WalletRepository {
  final WalletsClient _client;

  WalletRepository(this._client);

  Future<void> getWallet() async {
    try {
      final response = await _client.getWallet(GetWalletRequest());

      print(response);
    } catch (e) {
      print(e);
    }
  }
}
