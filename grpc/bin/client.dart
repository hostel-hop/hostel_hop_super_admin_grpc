import 'package:grpc/grpc.dart';
import 'package:hostel_hop_grpc/src/generated/wallet.pbgrpc.dart';

Future<void> main(List<String> args) async {
  final channel = ClientChannel(
    'hostelhop-super-admin-grpc-dev-td3eu4ynlq-oa.a.run.app',
    port: 443,
    options: ChannelOptions(
      credentials: ChannelCredentials.secure(),
      codecRegistry: CodecRegistry(
        codecs: const [GzipCodec(), IdentityCodec()],
      ),
    ),
  );
  final stub = WalletsClient(channel);

  try {
    final response = await stub.getWallets(GetWalletsRequest(query: ''));
    print('Response: $response');
  } catch (e) {
    print('Caught error: $e');
  }
  await channel.shutdown();
}
