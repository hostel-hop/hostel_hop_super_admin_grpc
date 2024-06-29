import 'package:hostel_hop_super_admin/src/generated/wallet.pbgrpc.dart';
import 'package:injectable/injectable.dart';

@singleton
class WalletRepository {
  final WalletsClient _client;

  WalletRepository(this._client);
}
