// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_remote_config/firebase_remote_config.dart' as _i3;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'core/data/storages/local_storage.dart' as _i6;
import 'core/di/app_module.dart' as _i18;
import 'core/di/firebase_module.dart' as _i17;
import 'core/presentation/blocs/flash/flash_cubit.dart' as _i4;
import 'features/splash/data/datasources/local_config_data_source.dart' as _i9;
import 'features/splash/data/datasources/remote_config_data_source.dart' as _i7;
import 'features/splash/data/repositories/remote_config_repository_impl.dart'
    as _i11;
import 'features/splash/domain/repositories/remote_config_repository.dart'
    as _i10;
import 'features/splash/domain/usecases/fetch_remote_config_api_key_use_case.dart'
    as _i14;
import 'features/splash/domain/usecases/fetch_remote_config_api_url_use_case.dart'
    as _i15;
import 'features/splash/domain/usecases/save_remote_config_api_key.dart'
    as _i12;
import 'features/splash/domain/usecases/save_remote_config_api_url.dart'
    as _i13;
import 'features/splash/presentation/cubit/splash_cubit.dart' as _i16;
import 'features/weather/presentation/bloc/weather_bloc.dart'
    as _i8; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseModule = _$FirebaseModule();
  final appModule = _$AppModule();
  gh.lazySingleton<_i3.FirebaseRemoteConfig>(() => firebaseModule.remoteConfig);
  gh.factory<_i4.FlashCubit>(() => _i4.FlashCubit());
  gh.lazySingleton<_i5.FlutterSecureStorage>(() => appModule.secureStorage);
  gh.lazySingleton<_i6.LocalStorage>(
      () => _i6.LocalStorageImpl(get<_i5.FlutterSecureStorage>()));
  gh.lazySingleton<_i7.RemoteConfigDataSource>(
      () => _i7.RemoteConfigDataSourceImpl(get<_i3.FirebaseRemoteConfig>()));
  gh.factory<_i8.WeatherBloc>(() => _i8.WeatherBloc());
  gh.lazySingleton<_i9.LocalConfigDataSource>(
      () => _i9.LocalConfigDataSourceImpl(get<_i6.LocalStorage>()));
  gh.lazySingleton<_i10.RemoteConfigRepository>(() =>
      _i11.RemoteConfigRepositoryImpl(
          get<_i7.RemoteConfigDataSource>(), get<_i9.LocalConfigDataSource>()));
  gh.factory<_i12.SaveRemoteConfigApiKey>(
      () => _i12.SaveRemoteConfigApiKey(get<_i10.RemoteConfigRepository>()));
  gh.factory<_i13.SaveRemoteConfigApiUrl>(
      () => _i13.SaveRemoteConfigApiUrl(get<_i10.RemoteConfigRepository>()));
  gh.factory<_i14.FetchRemoteConfigApiKeyUseCase>(() =>
      _i14.FetchRemoteConfigApiKeyUseCase(get<_i10.RemoteConfigRepository>()));
  gh.factory<_i15.FetchRemoteConfigApiUrlUseCase>(() =>
      _i15.FetchRemoteConfigApiUrlUseCase(get<_i10.RemoteConfigRepository>()));
  gh.factory<_i16.SplashCubit>(() => _i16.SplashCubit(
      get<_i14.FetchRemoteConfigApiKeyUseCase>(),
      get<_i15.FetchRemoteConfigApiUrlUseCase>(),
      get<_i12.SaveRemoteConfigApiKey>(),
      get<_i13.SaveRemoteConfigApiUrl>()));
  return get;
}

class _$FirebaseModule extends _i17.FirebaseModule {}

class _$AppModule extends _i18.AppModule {}
