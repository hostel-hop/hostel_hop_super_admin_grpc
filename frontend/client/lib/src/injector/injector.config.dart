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
import 'package:grpc/grpc_or_grpcweb.dart' as _i5;
import 'package:injectable/injectable.dart' as _i2;

import '../data/remote/interceptors/auth.dart' as _i14;
import '../data/remote/interceptors/debug.dart' as _i4;
import '../features/login/cubit/login_cubit.dart' as _i13;
import '../features/property_owners/cubit/property_owners_cubit.dart' as _i17;
import '../features/session/cubit/session_cubit.dart' as _i12;
import '../features/wallets/cubit/wallets_cubit.dart' as _i20;
import '../generated/property_owners.pbgrpc.dart' as _i8;
import '../generated/role.pbgrpc.dart' as _i9;
import '../generated/wallet.pbgrpc.dart' as _i7;
import '../module/register_module.dart' as _i6;
import '../repository/authentication/authentication_repository.dart' as _i11;
import '../repository/authentication/i_authentication_repository.dart' as _i10;
import '../repository/property_owner/i_property_owner_repository.dart' as _i15;
import '../repository/property_owner/property_owner_repository.dart' as _i16;
import '../repository/wallet/i_wallet_repository.dart' as _i18;
import '../repository/wallet/wallet_repository.dart' as _i19;

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
    gh.factory<_i4.DebugMessageClientInterceptor>(
        () => _i4.DebugMessageClientInterceptor());
    gh.singleton<_i5.GrpcOrGrpcWebClientChannel>(
        () => registerModule.grpcOrGrpcWebClientChannel());
    gh.lazySingleton<_i6.SupabaseAuthClient>(
        () => registerModule.supabaseClient());
    gh.lazySingleton<_i7.WalletsClient>(() =>
        registerModule.walletsClient(gh<_i5.GrpcOrGrpcWebClientChannel>()));
    gh.lazySingleton<_i8.PropertyOwnersClient>(() => registerModule
        .propertyOwnersClient(gh<_i5.GrpcOrGrpcWebClientChannel>()));
    gh.lazySingleton<_i9.RoleClient>(
        () => registerModule.roleClient(gh<_i5.GrpcOrGrpcWebClientChannel>()));
    gh.lazySingleton<_i10.IAuthenticationRepository>(
      () => _i11.AuthenticationRepository(
        gh<_i6.SupabaseAuthClient>(),
        gh<_i9.RoleClient>(),
      ),
      instanceName: 'AuthenticationRepository',
    );
    gh.singleton<_i12.SessionCubit>(() => _i12.SessionCubit(
        gh<_i10.IAuthenticationRepository>(
            instanceName: 'AuthenticationRepository')));
    gh.factory<_i13.LoginCubit>(() => _i13.LoginCubit(
        gh<_i10.IAuthenticationRepository>(
            instanceName: 'AuthenticationRepository')));
    gh.factory<_i14.AuthMessageClientInterceptor>(
        () => _i14.AuthMessageClientInterceptor(gh<_i6.SupabaseAuthClient>()));
    gh.singleton<_i15.IPropertyOwnerRepository>(
      () => _i16.PropertyOwnerRepository(gh<_i8.PropertyOwnersClient>()),
      instanceName: 'PropertyOwnerRepository',
    );
    gh.factory<_i17.PropertyOwnersCubit>(() => _i17.PropertyOwnersCubit(
        gh<_i15.IPropertyOwnerRepository>(
            instanceName: 'PropertyOwnerRepository')));
    gh.singleton<_i18.IWalletRepository>(
      () => _i19.WalletRepository(gh<_i7.WalletsClient>()),
      instanceName: 'WalletRepository',
    );
    gh.factory<_i20.WalletsCubit>(() => _i20.WalletsCubit(
        gh<_i18.IWalletRepository>(instanceName: 'WalletRepository')));
    return this;
  }
}

class _$RegisterModule extends _i6.RegisterModule {}
