import 'package:dartz/dartz.dart';
import 'package:weather/core/domain/failures/failure.dart';

abstract class RemoteConfigRepository {
  Future<Either<Failure, String>> getApiUrl();
  Future<Either<Failure, String>> getApiKey();
}
