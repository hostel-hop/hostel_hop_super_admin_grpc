// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dotenv/dotenv.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:mongo_dart/mongo_dart.dart' as _i3;
import 'package:supabase/supabase.dart' as _i8;

import '../module/register_module.dart' as _i10;
import '../services/ambassadors_service.dart' as _i6;
import '../services/property_owner_service.dart' as _i7;
import '../services/role_service.dart' as _i9;
import '../services/wallets_service.dart' as _i5;

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
    await gh.factoryAsync<_i3.Db>(
      () => registerModule.db(),
      preResolve: true,
    );
    gh.singleton<_i4.DotEnv>(() => registerModule.dotEnv());
    gh.singleton<_i5.WalletsService>(() => _i5.WalletsService(gh<_i3.Db>()));
    gh.singleton<_i6.AmbassadorService>(
        () => _i6.AmbassadorService(gh<_i3.Db>()));
    gh.singleton<_i7.PropertyOwnersService>(() => _i7.PropertyOwnersService(
          gh<_i3.Db>(),
          gh<_i4.DotEnv>(),
        ));
    gh.lazySingleton<_i8.SupabaseClient>(
        () => registerModule.supabaseClient(gh<_i4.DotEnv>()));
    gh.singleton<_i9.RoleService>(
        () => _i9.RoleService(gh<_i8.SupabaseClient>()));
    return this;
  }
}

class _$RegisterModule extends _i10.RegisterModule {}
