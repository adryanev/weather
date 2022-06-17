import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:weather/core/data/storages/local_storage.dart';
import 'package:weather/core/domain/failures/failure.dart';

abstract class LocalConfigDataSource {
  Future<Either<Failure, Unit>> saveApiKey(String apiKey);
  Future<Either<Failure, Unit>> saveApiUrl(String apiUrl);
  Future<Either<Failure, Unit>> saveGeocoderKey(String apiKey);
}

@LazySingleton(as: LocalConfigDataSource)
class LocalConfigDataSourceImpl implements LocalConfigDataSource {
  const LocalConfigDataSourceImpl(this._localStorage);
  final LocalStorage _localStorage;
  @override
  Future<Either<Failure, Unit>> saveApiKey(String apiKey) async {
    try {
      await _localStorage.setApiKey(apiKey);
      return right(unit);
    } catch (e) {
      return left(const Failure.preferenceFailure());
    }
  }

  @override
  Future<Either<Failure, Unit>> saveApiUrl(String apiUrl) async {
    try {
      await _localStorage.setApiUrl(apiUrl);
      return right(unit);
    } catch (e) {
      return left(const Failure.preferenceFailure());
    }
  }

  @override
  Future<Either<Failure, Unit>> saveGeocoderKey(String apiKey) async {
    try {
      await _localStorage.setGeocoderApiKey(apiKey);
      return right(unit);
    } catch (e) {
      return left(const Failure.preferenceFailure());
    }
  }
}
