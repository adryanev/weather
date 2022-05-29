import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:weather/features/splash/domain/entities/remote_config.dart';

@immutable
class RemoteConfigParams extends Equatable {
  const RemoteConfigParams({required this.remoteConfig});
  final RemoteConfig remoteConfig;

  @override
  List<Object?> get props => [remoteConfig];
}
