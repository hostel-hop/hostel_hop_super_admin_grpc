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
import 'package:mongo_dart/mongo_dart.dart' as _i5;

import '../module/register_module.dart' as _i8;
import '../services/property_owner.dart' as _i6;
import '../services/wallet.dart' as _i7;

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
    gh.factory<_i4.DotEnv>(() => registerModule.dotEnv());
    await gh.factoryAsync<_i5.Db>(
      () => registerModule.db(),
      preResolve: true,
    );
    gh.singleton<_i6.PropertyOwnersService>(
        () => _i6.PropertyOwnersService(gh<_i5.Db>()));
    gh.singleton<_i7.WalletsService>(() => _i7.WalletsService(gh<_i5.Db>()));
    return this;
  }
}

class _$RegisterModule extends _i8.RegisterModule {}
