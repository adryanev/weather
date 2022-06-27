import 'package:freezed_annotation/freezed_annotation.dart';
part 'failure.freezed.dart';

@freezed
class Failure with _$Failure {
  const factory Failure.remoteConfigFailure() = RemoteConfigFailure;
  const factory Failure.preferenceFailure() = PreferenceFailure;
  const factory Failure.locationFailure() = LocationFailure;
  const factory Failure.locationPermissionFailure() = LocationPermissionFailure;
  const factory Failure.remoteFailure() = RemoteFailure;
}
