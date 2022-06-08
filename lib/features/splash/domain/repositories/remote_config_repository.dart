import 'package:dartz/dartz.dart';
import 'package:weather/core/domain/failures/failure.dart';
import 'package:weather/features/splash/domain/entities/remote_config.dart';

abstract class RemoteConfigRepository {
  Future<Either<Failure, RemoteConfig<String, String>>> getApiUrl();
  Future<Either<Failure, RemoteConfig<String, String>>> getApiKey();
  Future<Either<Failure, Unit>> saveApiUrl(RemoteConfig remoteConfig);
  Future<Either<Failure, Unit>> saveApiKey(RemoteConfig remoteConfig);
}
