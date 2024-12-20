import 'package:get_it/get_it.dart';
import 'package:grpc/grpc.dart';
import 'package:hostel_hop_grpc/src/injector/injector.config.dart';
import 'package:hostel_hop_grpc/src/services/ambassadors_service.dart';
import 'package:hostel_hop_grpc/src/services/property_owner_service.dart';
import 'package:hostel_hop_grpc/src/services/role_service.dart';
import 'package:hostel_hop_grpc/src/services/wallets_service.dart';
import 'package:hostel_hop_grpc/src/shared/constants.dart';

import 'package:hostel_hop_grpc/src/shared/utils/jwt.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;

Future<void> main(List<String> args) async {
  await getIt.init(environment: Environment.dev);

  final server = Server.create(
      services: [
        getIt<RoleService>(),
        getIt<WalletsService>(),
        getIt<PropertyOwnersService>(),
        getIt<AmbassadorService>(),
      ],
      codecRegistry: CodecRegistry(codecs: const [
        GzipCodec(),
      ]),
      interceptors: [
        (ServiceCall call, ServiceMethod method) {
          print('Received call to ${method.name}');
          final metadata = call.clientMetadata;

          if (anonMethods.any((element) => element == method.name)) return null;

          if (metadata == null) {
            throw GrpcError.unauthenticated('No metadata provided');
          }

          final authorization = metadata['authorization'];

          if (authorization == null) {
            throw GrpcError.unauthenticated('No token provided');
          }

          final token = authorization.split('Bearer ')[1];

          final bool isValid = JWTUtilis.isTokenValidForSuperAdmin(token);

          if (!isValid) {
            throw GrpcError.unauthenticated('Invalid token');
          }

          return null;
        },
      ]);

  await server.serve(port: 50051);

  print('Server listening on port ${server.port}...');
}
