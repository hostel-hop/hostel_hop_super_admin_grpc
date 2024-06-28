import 'package:grpc/grpc.dart';
import 'package:hostel_hop_grpc/src/generated/Wallet.pbgrpc.dart';

Future<void> main(List<String> args) async {
  final channel = ClientChannel(
    'localhost',
    port: 50051,
    options: ChannelOptions(
      credentials: ChannelCredentials.insecure(),
      codecRegistry: CodecRegistry(
        codecs: const [
          GzipCodec(),
          IdentityCodec(),
        ],
      ),
    ),
  );
  final stub = WalletsClient(channel);

  try {
    await stub.getWallet(
      GetWalletRequest()..backpackerId = 'some@email.com',
      options: CallOptions(compression: const GzipCodec()),
    );
  } catch (e) {
    print('Caught error: $e');
  }
  await channel.shutdown();
}
