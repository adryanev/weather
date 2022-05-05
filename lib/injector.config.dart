// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_remote_config/firebase_remote_config.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'core/di/firebase_module.dart' as _i8;
import 'features/splash/data/datasources/remote_config_data_source.dart' as _i4;
import 'features/splash/data/repositories/remote_config_repository_impl.dart'
    as _i6;
import 'features/splash/domain/repositories/remote_config_repository.dart'
    as _i5;
import 'features/splash/domain/usecases/fetch_remote_config_api_url_use_case.dart'
    as _i7; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseModule = _$FirebaseModule();
  gh.lazySingleton<_i3.FirebaseRemoteConfig>(() => firebaseModule.remoteConfig);
  gh.lazySingleton<_i4.RemoteConfigDataSource>(
      () => _i4.RemoteConfigDataSourceImpl(get<_i3.FirebaseRemoteConfig>()));
  gh.lazySingleton<_i5.RemoteConfigRepository>(
      () => _i6.RemoteConfigRepositoryImpl(get<_i4.RemoteConfigDataSource>()));
  gh.factory<_i7.FetchRemoteConfigApiUrlUseCase>(() =>
      _i7.FetchRemoteConfigApiUrlUseCase(get<_i5.RemoteConfigRepository>()));
  return get;
}

class _$FirebaseModule extends _i8.FirebaseModule {}
