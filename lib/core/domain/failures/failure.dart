import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  const Failure(this.message);

  final String message;
}

class RemoteConfigFailure extends Failure {
  const RemoteConfigFailure(String message) : super(message);

  @override
  List<Object?> get props => [message];
}

class LocalStorageFailure extends Failure {
  const LocalStorageFailure(String message) : super(message);

  @override
  List<Object?> get props => [message];
}
