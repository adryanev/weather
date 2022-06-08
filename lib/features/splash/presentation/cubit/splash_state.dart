part of 'splash_cubit.dart';

@freezed
class SplashState with _$SplashState {
  const factory SplashState({
    required Option<Either<Failure, RemoteConfig<String, String>>>
        fetchApiUrlOrFailureOption,
    required Option<Either<Failure, RemoteConfig<String, String>>>
        fetchApiKeyOrFailureOption,
    required Option<Either<Failure, Unit>> saveApiKeyOrFailureOption,
    required Option<Either<Failure, Unit>> saveApiUrlOrFailureOption,
    required SplashStatus status,
    required bool isLoading,
  }) = _SplashState;
  factory SplashState.initial() => SplashState(
        fetchApiKeyOrFailureOption: none(),
        fetchApiUrlOrFailureOption: none(),
        saveApiKeyOrFailureOption: none(),
        saveApiUrlOrFailureOption: none(),
        status: SplashStatus.started,
        isLoading: false,
      );
}

enum SplashStatus {
  started,
  fetchApiUrl,
  fetchApiKey,
  saveApiUrl,
  saveApiKey,
  done,
}
