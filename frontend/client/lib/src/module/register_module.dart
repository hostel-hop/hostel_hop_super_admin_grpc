import 'package:google_sign_in_platform_interface/google_sign_in_platform_interface.dart';
import 'package:grpc/grpc_or_grpcweb.dart';
import 'package:hostel_hop_super_admin/src/generated/property_owners.pbgrpc.dart';
import 'package:hostel_hop_super_admin/src/generated/wallet.pbgrpc.dart';
import 'package:hostel_hop_super_admin/src/interceptors/auth.dart';
import 'package:hostel_hop_super_admin/src/interceptors/debug.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

typedef SupabaseAuthClient = GoTrueClient;

final GoogleSignInPlatform platform = GoogleSignInPlatform.instance;

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

  GrpcOrGrpcWebClientChannel grpcOrGrpcWebClientChannel() {
    return GrpcOrGrpcWebClientChannel.toSingleEndpoint(
      // host: "hostelhop-grpc-dev-td3eu4ynlq-oa.a.run.app",
      // port: 443,
      // transportSecure: true,
      host: "localhost",
      port: 8080,
      transportSecure: false,
    );
  }

  WalletsClient walletsClient(GrpcOrGrpcWebClientChannel channel) {
    return WalletsClient(
      channel,
      interceptors: [
        AuthMessageClientInterceptor(),
        DebugMessageClientInterceptor()
      ],
    );
  }

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
}