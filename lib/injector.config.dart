// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i13;
import 'package:firebase_remote_config/firebase_remote_config.dart' as _i3;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'core/data/storages/local_storage.dart' as _i6;
import 'core/di/app_module.dart' as _i32;
import 'core/di/dio_module.dart' as _i14;
import 'core/di/firebase_module.dart' as _i31;
import 'core/network/interceptors/api_key_interceptor.dart' as _i12;
import 'core/network/interceptors/url_interceptor.dart' as _i11;
import 'core/presentation/blocs/flash/flash_cubit.dart' as _i4;
import 'features/splash/data/datasources/local_config_data_source.dart' as _i16;
import 'features/splash/data/datasources/remote_config_data_source.dart'
    as _i10;
import 'features/splash/data/repositories/remote_config_repository_impl.dart'
    as _i18;
import 'features/splash/domain/repositories/remote_config_repository.dart'
    as _i17;
import 'features/splash/domain/usecases/fetch_remote_config_api_key_use_case.dart'
    as _i25;
import 'features/splash/domain/usecases/fetch_remote_config_api_url_use_case.dart'
    as _i26;
import 'features/splash/domain/usecases/save_remote_config_api_key.dart'
    as _i19;
import 'features/splash/domain/usecases/save_remote_config_api_url.dart'
    as _i20;
import 'features/splash/presentation/cubit/splash_cubit.dart' as _i29;
import 'features/weather/data/datasources/local/location_data_source.dart'
    as _i7;
import 'features/weather/data/datasources/remote/client/weather_api_client.dart'
    as _i21;
import 'features/weather/data/datasources/remote/weather_remote_source.dart'
    as _i22;
import 'features/weather/data/repositories/location_repository_impl.dart'
    as _i9;
import 'features/weather/data/repositories/weather_repository_impl.dart'
    as _i24;
import 'features/weather/domain/repositories/location_repository.dart' as _i8;
import 'features/weather/domain/repositories/weather_repository.dart' as _i23;
import 'features/weather/domain/usecases/get_current_location.dart' as _i15;
import 'features/weather/domain/usecases/get_weather_by_city.dart' as _i27;
import 'features/weather/domain/usecases/get_weather_by_coordinates.dart'
    as _i28;
import 'features/weather/presentation/bloc/weather_bloc.dart'
    as _i30; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i7.LocationDataSource>(() => _i7.LocationDataSourceImpl());
  gh.lazySingleton<_i8.LocationRepository>(
      () => _i9.LocationRepositoryImpl(get<_i7.LocationDataSource>()));
  gh.lazySingleton<_i10.RemoteConfigDataSource>(
      () => _i10.RemoteConfigDataSourceImpl(get<_i3.FirebaseRemoteConfig>()));
  gh.lazySingleton<_i11.UrlInterceptor>(
      () => _i11.UrlInterceptor(get<_i6.LocalStorage>()));
  gh.lazySingleton<_i12.ApiKeyInterceptor>(
      () => _i12.ApiKeyInterceptor(get<_i6.LocalStorage>()));
  gh.lazySingleton<_i13.Dio>(() => _i14.DioModule(
      get<_i11.UrlInterceptor>(), get<_i12.ApiKeyInterceptor>()));
  gh.factory<_i15.GetCurrentLocation>(
      () => _i15.GetCurrentLocation(get<_i8.LocationRepository>()));
  gh.lazySingleton<_i16.LocalConfigDataSource>(
      () => _i16.LocalConfigDataSourceImpl(get<_i6.LocalStorage>()));
  gh.lazySingleton<_i17.RemoteConfigRepository>(() =>
      _i18.RemoteConfigRepositoryImpl(get<_i10.RemoteConfigDataSource>(),
          get<_i16.LocalConfigDataSource>()));
  gh.factory<_i19.SaveRemoteConfigApiKey>(
      () => _i19.SaveRemoteConfigApiKey(get<_i17.RemoteConfigRepository>()));
  gh.factory<_i20.SaveRemoteConfigApiUrl>(
      () => _i20.SaveRemoteConfigApiUrl(get<_i17.RemoteConfigRepository>()));
  gh.lazySingleton<_i21.WeatherApiClient>(
      () => _i21.WeatherApiClient(get<_i13.Dio>()));
  gh.lazySingleton<_i22.WeatherRemoteSource>(
      () => _i22.WeatherRemoteSourceImpl(get<_i21.WeatherApiClient>()));
  gh.lazySingleton<_i23.WeatherRepository>(
      () => _i24.WeatherRepositoryImpl(get<_i22.WeatherRemoteSource>()));
  gh.factory<_i25.FetchRemoteConfigApiKeyUseCase>(() =>
      _i25.FetchRemoteConfigApiKeyUseCase(get<_i17.RemoteConfigRepository>()));
  gh.factory<_i26.FetchRemoteConfigApiUrlUseCase>(() =>
      _i26.FetchRemoteConfigApiUrlUseCase(get<_i17.RemoteConfigRepository>()));
  gh.factory<_i27.GetWeatherByCity>(
      () => _i27.GetWeatherByCity(get<_i23.WeatherRepository>()));
  gh.factory<_i28.GetWeatherByCoordinates>(
      () => _i28.GetWeatherByCoordinates(get<_i23.WeatherRepository>()));
  gh.factory<_i29.SplashCubit>(() => _i29.SplashCubit(
      get<_i25.FetchRemoteConfigApiKeyUseCase>(),
      get<_i26.FetchRemoteConfigApiUrlUseCase>(),
      get<_i19.SaveRemoteConfigApiKey>(),
      get<_i20.SaveRemoteConfigApiUrl>()));
  gh.factory<_i30.WeatherBloc>(() => _i30.WeatherBloc(
      get<_i15.GetCurrentLocation>(), get<_i28.GetWeatherByCoordinates>()));
  return get;
}

class _$FirebaseModule extends _i31.FirebaseModule {}

class _$AppModule extends _i32.AppModule {}
