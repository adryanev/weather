import 'package:dartz/dartz.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:injectable/injectable.dart';
import 'package:weather/core/domain/failures/failure.dart';
import 'package:weather/core/utils/constants.dart';

abstract class RemoteConfigDataSource {
  Future<Either<Failure, String>> getApiUrl();
  Future<Either<Failure, String>> getApiKey();
}

@LazySingleton(as: RemoteConfigDataSource)
class RemoteConfigDataSourceImpl implements RemoteConfigDataSource {
  RemoteConfigDataSourceImpl(this._remoteConfig);
  final FirebaseRemoteConfig _remoteConfig;
  @override
  Future<Either<Failure, String>> getApiKey() async {
    try {
      final data = _remoteConfig.getString(remoteConfigApiKey);
      return right(data);
    } on Exception catch (_) {
      return left(RemoteConfigFailure(_.toString()));
    }
  }

  @override
  Future<Either<Failure, String>> getApiUrl() async {
    try {
      final data = _remoteConfig.getString(remoteConfigApiUrl);
      return right(data);
    } on Exception catch (_) {
      return left(RemoteConfigFailure(_.toString()));
    }
  }
}
