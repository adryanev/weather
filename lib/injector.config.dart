// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_remote_config/firebase_remote_config.dart' as _i3;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'core/data/storages/local_storage.dart' as _i4;
import 'core/di/firebase_module.dart' as _i13;
import 'features/splash/data/datasources/local_config_data_source.dart' as _i7;
import 'features/splash/data/datasources/remote_config_data_source.dart' as _i6;
import 'features/splash/data/repositories/remote_config_repository_impl.dart'
    as _i9;
import 'features/splash/domain/repositories/remote_config_repository.dart'
    as _i8;
import 'features/splash/domain/usecases/fetch_remote_config_api_url_use_case.dart'
    as _i12;
import 'features/splash/domain/usecases/save_remote_config_api_key.dart'
    as _i10;
import 'features/splash/domain/usecases/save_remote_config_api_url.dart'
    as _i11; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseModule = _$FirebaseModule();
  gh.lazySingleton<_i3.FirebaseRemoteConfig>(() => firebaseModule.remoteConfig);
  gh.lazySingleton<_i4.LocalStorage>(
      () => _i4.LocalStorageImpl(get<_i5.FlutterSecureStorage>()));
  gh.lazySingleton<_i6.RemoteConfigDataSource>(
      () => _i6.RemoteConfigDataSourceImpl(get<_i3.FirebaseRemoteConfig>()));
  gh.lazySingleton<_i7.LocalConfigDataSource>(
      () => _i7.LocalConfigDataSourceImpl(get<_i4.LocalStorage>()));
  gh.lazySingleton<_i8.RemoteConfigRepository>(() =>
      _i9.RemoteConfigRepositoryImpl(
          get<_i6.RemoteConfigDataSource>(), get<_i7.LocalConfigDataSource>()));
  gh.factory<_i10.SaveRemoteConfigApiKey>(
      () => _i10.SaveRemoteConfigApiKey(get<_i8.RemoteConfigRepository>()));
  gh.factory<_i11.SaveRemoteConfigApiUrl>(
      () => _i11.SaveRemoteConfigApiUrl(get<_i8.RemoteConfigRepository>()));
  gh.factory<_i12.FetchRemoteConfigApiUrlUseCase>(() =>
      _i12.FetchRemoteConfigApiUrlUseCase(get<_i8.RemoteConfigRepository>()));
  return get;
}

class _$FirebaseModule extends _i13.FirebaseModule {}
