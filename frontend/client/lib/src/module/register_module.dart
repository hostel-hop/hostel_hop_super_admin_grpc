import 'package:google_sign_in_platform_interface/google_sign_in_platform_interface.dart';
import 'package:grpc/grpc_or_grpcweb.dart';
import 'package:hostel_hop_super_admin/src/generated/ambassador.pbgrpc.dart';
import 'package:hostel_hop_super_admin/src/generated/property_owners.pbgrpc.dart';
import 'package:hostel_hop_super_admin/src/generated/role.pbgrpc.dart';
import 'package:hostel_hop_super_admin/src/generated/wallet.pbgrpc.dart';
import 'package:hostel_hop_super_admin/src/interceptors/auth.dart';
import 'package:hostel_hop_super_admin/src/interceptors/debug.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

typedef SupabaseAuthClient = GoTrueClient;

final GoogleSignInPlatform platform = GoogleSignInPlatform.instance;

const grpcHost = String.fromEnvironment('GRPC_HOST');

@module
abstract class RegisterModule {
  @LazySingleton()
  SupabaseAuthClient supabaseClient() {
    return Supabase.instance.client.auth;
  }

  @preResolve
  Future<GoogleSignInPlatform> googleSignInPlatform() async {
    await platform.init(
      clientId: const String.fromEnvironment('GOOGLE_WEB_CLIENT_ID'),
    );

    return platform;
  }

  @singleton
  GrpcOrGrpcWebClientChannel grpcOrGrpcWebClientChannel() {
    return grpcHost.isEmpty
        ? GrpcOrGrpcWebClientChannel.toSingleEndpoint(
            host: "localhost",
            port: 8080,
            transportSecure: false,
          )
        : GrpcOrGrpcWebClientChannel.toSingleEndpoint(
            host: const String.fromEnvironment('GRPC_HOST'),
            port: 443,
            transportSecure: true,
          );
  }

  @LazySingleton()
  WalletsClient walletsClient(GrpcOrGrpcWebClientChannel channel) {
    return WalletsClient(
      channel,
      interceptors: [
        AuthMessageClientInterceptor(),
        DebugMessageClientInterceptor()
      ],
    );
  }

   @LazySingleton()
  AmbassadorsClient ambassadorClient(GrpcOrGrpcWebClientChannel channel) {
    return AmbassadorsClient(
      channel,
      interceptors: [
        AuthMessageClientInterceptor(),
        DebugMessageClientInterceptor()
      ],
    );
  }

  @LazySingleton()
  PropertyOwnersClient propertyOwnersClient(
      GrpcOrGrpcWebClientChannel channel) {
    return PropertyOwnersClient(
      channel,
      interceptors: [
        AuthMessageClientInterceptor(),
        DebugMessageClientInterceptor()
      ],
    );
  }

  @LazySingleton()
  RoleClient roleClient(GrpcOrGrpcWebClientChannel channel) {
    return RoleClient(
      channel,
      interceptors: [
        AuthMessageClientInterceptor(),
        DebugMessageClientInterceptor()
      ],
    );
  }
}
