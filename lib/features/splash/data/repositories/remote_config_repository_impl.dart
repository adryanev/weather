import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:weather/core/domain/failures/failure.dart';
import 'package:weather/core/utils/constants.dart';
import 'package:weather/features/splash/data/datasources/remote_config_data_source.dart';
import 'package:weather/features/splash/domain/entities/remote_config.dart';
import 'package:weather/features/splash/domain/repositories/remote_config_repository.dart';

@LazySingleton(as: RemoteConfigRepository)
class RemoteConfigRepositoryImpl implements RemoteConfigRepository {
  const RemoteConfigRepositoryImpl(this.dataSource);
  final RemoteConfigDataSource dataSource;
  @override
  Future<Either<Failure, RemoteConfig<String, String>>> getApiKey() async {
    final data = await dataSource.getApiKey();
    return data.map(
      (r) => RemoteConfig(
        key: remoteConfigApiKey,
        value: r,
      ),
    );
  }

  @override
  Future<Either<Failure, RemoteConfig<String, String>>> getApiUrl() async {
    final data = await dataSource.getApiUrl();
    return data.map(
      (r) => RemoteConfig(
        key: remoteConfigApiUrl,
        value: r,
      ),
    );
  }
}
