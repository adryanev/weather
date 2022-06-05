import 'package:dartz/dartz.dart';
import 'package:weather/core/domain/failures/failure.dart';
import 'package:weather/core/domain/usecases/use_case.dart';
import 'package:weather/features/splash/domain/entities/remote_config.dart';
import 'package:weather/features/splash/domain/repositories/remote_config_repository.dart';

class FetchRemoteConfigApiKeyUseCase
    extends UseCase<RemoteConfig<String, String>, NoParams> {
  FetchRemoteConfigApiKeyUseCase(this._remoteConfigRepository);
  final RemoteConfigRepository _remoteConfigRepository;
  @override
  Future<Either<Failure, RemoteConfig<String, String>>> call(
    NoParams params,
  ) async {
    return _remoteConfigRepository.getApiKey();
  }
}
