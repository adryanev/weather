import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:weather/core/domain/failures/failure.dart';
import 'package:weather/core/domain/usecases/use_case.dart';
import 'package:weather/features/splash/domain/entities/remote_config_params.dart';
import 'package:weather/features/splash/domain/repositories/remote_config_repository.dart';

@injectable
class SaveRemoteConfigGeocoderKey extends UseCase<Unit, RemoteConfigParams> {
  const SaveRemoteConfigGeocoderKey(this._repository);
  final RemoteConfigRepository _repository;
  @override
  Future<Either<Failure, Unit>> call(RemoteConfigParams params) async {
    return _repository.saveGeocoderKey(params.remoteConfig);
  }
}
