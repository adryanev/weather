import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:weather/core/data/storages/local_storage.dart';
import 'package:weather/core/domain/failures/failure.dart';

abstract class LocalConfigDataSource {
  Future<Either<Failure, Unit>> saveApiKey(String apiKey);
  Future<Either<Failure, Unit>> saveApiUrl(String apiUrl);
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
      return left(LocalStorageFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> saveApiUrl(String apiUrl) async {
    try {
      await _localStorage.setApiUrl(apiUrl);
      return right(unit);
    } catch (e) {
      return left(LocalStorageFailure(e.toString()));
    }
  }
}
