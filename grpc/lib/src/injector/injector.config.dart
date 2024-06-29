// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dotenv/dotenv.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:mongo_dart/mongo_dart.dart' as _i4;

import '../module/register_module.dart' as _i7;
import '../services/property_owner_service.dart' as _i6;
import '../services/wallet.dart' as _i5;

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
    gh.factory<_i3.DotEnv>(() => registerModule.dotEnv());
    await gh.factoryAsync<_i4.Db>(
      () => registerModule.db(),
      preResolve: true,
    );
    gh.singleton<_i5.WalletsService>(() => _i5.WalletsService(gh<_i4.Db>()));
    gh.singleton<_i6.PropertyOwnersService>(() => _i6.PropertyOwnersService(
          gh<_i4.Db>(),
          gh<_i3.DotEnv>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i7.RegisterModule {}
