import 'package:grpc/grpc.dart';
import 'package:hostel_hop_grpc/src/generated/role.pbgrpc.dart';

Future<void> main(List<String> args) async {
  final channel = ClientChannel(
    'hostelhop-super-admin-grpc-a5buyscvha-oa.a.run.app',
    port: 443,
    options: ChannelOptions(
      credentials: ChannelCredentials.secure(),
      codecRegistry: CodecRegistry(
        codecs: const [GzipCodec(), IdentityCodec()],
      ),
    ),
  );

  final stub = RoleClient(channel);

  try {
    final response = await stub.authorize(AuthorizeRequest(
      userId: '1',
      role: 'admin',
    ));
    print('Response: $response');
  } catch (e) {
    print('Caught error: $e');
  }
  
  await channel.shutdown();
}
