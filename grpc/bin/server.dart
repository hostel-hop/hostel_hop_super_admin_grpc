import 'package:get_it/get_it.dart';
import 'package:grpc/grpc.dart';
import 'package:hostel_hop_grpc/src/injector/injector.config.dart';
import 'package:hostel_hop_grpc/src/services/property_owner.dart';
import 'package:hostel_hop_grpc/src/services/wallet.dart';
import 'package:hostel_hop_grpc/src/utils/jwt.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;

Future<void> main(List<String> args) async {
  await getIt.init(environment: Environment.dev);

  final server = Server.create(
      services: [
        getIt.get<WalletsService>(),
        getIt.get<PropertyOwnersService>(),
      ],
      codecRegistry: CodecRegistry(codecs: const [
        GzipCodec(),
      ]),
      interceptors: [
        (ServiceCall call, ServiceMethod method) {
          print('Received call to ${method.name}');
          final metadata = call.clientMetadata;

          if (metadata == null) {
            throw GrpcError.unauthenticated('No metadata provided');
          }

          final authorization = metadata['authorization'];

          if (authorization == null) {
            throw GrpcError.unauthenticated('No token provided');
          }

          final token = authorization.split('Bearer ')[1];

          print('Token: $token');

          final isValid = JWTUtilis.isTokenValidForSuperAdmin(token);

          if (!isValid) {
            throw GrpcError.unauthenticated('Invalid token');
          }
          return null;
        },
      ]);
  await server.serve(port: 50051);
  print('Server listening on port ${server.port}...');
}
