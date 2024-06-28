// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in_platform_interface/google_sign_in_platform_interface.dart'
    as _i3;
import 'package:grpc/grpc_or_grpcweb.dart' as _i4;
import 'package:injectable/injectable.dart' as _i2;

import '../data/remote/interceptors/auth.dart' as _i8;
import '../data/remote/interceptors/debug.dart' as _i5;
import '../features/login/cubit/login_cubit.dart' as _i12;
import '../generated/wallet.pbgrpc.dart' as _i7;
import '../module/register_module.dart' as _i6;
import '../repository/authentication/authentication_repository.dart' as _i10;
import '../repository/authentication/i_authentication_repository.dart' as _i9;
import '../repository/wallet/wallet_repository.dart' as _i11;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    await gh.factoryAsync<_i3.GoogleSignInPlatform>(
      () => registerModule.googleSignInPlatform(),
      preResolve: true,
    );
    gh.factory<_i4.GrpcOrGrpcWebClientChannel>(
        () => registerModule.grpcOrGrpcWebClientChannel());
    gh.factory<_i5.DebugMessageClientInterceptor>(
        () => _i5.DebugMessageClientInterceptor());
    gh.lazySingleton<_i6.SupabaseAuthClient>(
        () => registerModule.supabaseClient());
    gh.factory<_i7.WalletsClient>(() =>
        registerModule.walletsClient(gh<_i4.GrpcOrGrpcWebClientChannel>()));
    gh.factory<_i8.AuthMessageClientInterceptor>(
        () => _i8.AuthMessageClientInterceptor(gh<_i6.SupabaseAuthClient>()));
    gh.lazySingleton<_i9.IAuthenticationRepository>(
      () => _i10.AuthenticationRepository(gh<_i6.SupabaseAuthClient>()),
      instanceName: 'AuthenticationRepository',
    );
    gh.singleton<_i11.WalletRepository>(
        () => _i11.WalletRepository(gh<_i7.WalletsClient>()));
    gh.factory<_i12.LoginCubit>(() => _i12.LoginCubit(
        gh<_i9.IAuthenticationRepository>(
            instanceName: 'AuthenticationRepository')));
    return this;
  }
}

class _$RegisterModule extends _i6.RegisterModule {}
