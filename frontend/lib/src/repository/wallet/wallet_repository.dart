import 'package:grpc/grpc_or_grpcweb.dart';
import 'package:hostel_hop_super_admin/main.dart';
import 'package:hostel_hop_super_admin/src/data/remote/interceptors/auth.dart';
import 'package:hostel_hop_super_admin/src/data/remote/interceptors/debug.dart';
import 'package:hostel_hop_super_admin/src/generated/wallet.pbgrpc.dart';
import 'package:injectable/injectable.dart';

@singleton
class WalletRepository {
  final WalletsClient _client;

  WalletRepository(GrpcOrGrpcWebClientChannel channel)
      : _client = WalletsClient(channel, interceptors: [
          getIt.get<AuthMessageClientInterceptor>(),
          getIt.get<DebugMessageClientInterceptor>(),
        ]);

  Future<void> getWallet() async {
    final response = await _client.getWallet(GetWalletRequest());

    print(response);
  }
}
