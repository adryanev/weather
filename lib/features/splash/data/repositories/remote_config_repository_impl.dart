import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:weather/core/domain/failures/failure.dart';
import 'package:weather/core/utils/constants.dart';
import 'package:weather/features/splash/data/datasources/local_config_data_source.dart';
import 'package:weather/features/splash/data/datasources/remote_config_data_source.dart';
import 'package:weather/features/splash/domain/entities/remote_config.dart';
import 'package:weather/features/splash/domain/repositories/remote_config_repository.dart';

@LazySingleton(as: RemoteConfigRepository)
class RemoteConfigRepositoryImpl implements RemoteConfigRepository {
  const RemoteConfigRepositoryImpl(
    this._dataSource,
    this._localConfigDataSource,
  );
  final RemoteConfigDataSource _dataSource;
  final LocalConfigDataSource _localConfigDataSource;
  @override
  Future<Either<Failure, RemoteConfig<String, String>>> getApiKey() async {
    final data = await _dataSource.getApiKey();
    return data.map(
      (r) => RemoteConfig(
        key: remoteConfigApiKey,
        value: r,
      ),
    );
  }

  @override
  Future<Either<Failure, RemoteConfig<String, String>>> getApiUrl() async {
    final data = await _dataSource.getApiUrl();
    return data.map(
      (r) => RemoteConfig(
        key: remoteConfigApiUrl,
        value: r,
      ),
    );
  }

  @override
  Future<Either<Failure, Unit>> saveApiKey(RemoteConfig remoteConfig) {
    return _localConfigDataSource.saveApiKey(remoteConfig.value.toString());
  }

  @override
  Future<Either<Failure, Unit>> saveApiUrl(RemoteConfig remoteConfig) {
    return _localConfigDataSource.saveApiUrl(remoteConfig.value.toString());
  }
}
