import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:weather/core/domain/failures/failure.dart';
import 'package:weather/core/domain/usecases/use_case.dart';
import 'package:weather/features/splash/domain/entities/remote_config.dart';
import 'package:weather/features/splash/domain/entities/remote_config_params.dart';
import 'package:weather/features/splash/domain/usecases/fetch_remote_config_api_key_use_case.dart';
import 'package:weather/features/splash/domain/usecases/fetch_remote_config_api_url_use_case.dart';
import 'package:weather/features/splash/domain/usecases/save_remote_config_api_key.dart';
import 'package:weather/features/splash/domain/usecases/save_remote_config_api_url.dart';

part 'splash_state.dart';
part 'splash_cubit.freezed.dart';

@injectable
class SplashCubit extends Cubit<SplashState> {
  SplashCubit(
    this._fetchRemoteConfigApiKeyUseCase,
    this._fetchRemoteConfigApiUrlUseCase,
    this._saveRemoteConfigApiKey,
    this._saveRemoteConfigApiUrl,
  ) : super(SplashState.initial());

  final FetchRemoteConfigApiKeyUseCase _fetchRemoteConfigApiKeyUseCase;
  final FetchRemoteConfigApiUrlUseCase _fetchRemoteConfigApiUrlUseCase;
  final SaveRemoteConfigApiKey _saveRemoteConfigApiKey;
  final SaveRemoteConfigApiUrl _saveRemoteConfigApiUrl;

  FutureOr<void> fetchApiKey() async {
    emit(
      state.copyWith(isLoading: true, status: SplashStatus.fetchApiKey),
    );

    final result = await _fetchRemoteConfigApiKeyUseCase(NoParams());
    emit(
      state.copyWith(
        fetchApiKeyOrFailureOption: optionOf(result),
      ),
    );
    emit(
      state.copyWith(
        isLoading: false,
        fetchApiKeyOrFailureOption: none(),
      ),
    );
  }

  FutureOr<void> fetchApiUrl() async {
    emit(
      state.copyWith(
        isLoading: true,
        status: SplashStatus.fetchApiUrl,
      ),
    );

    final result = await _fetchRemoteConfigApiUrlUseCase(NoParams());
    emit(
      state.copyWith(
        fetchApiUrlOrFailureOption: optionOf(result),
      ),
    );
    emit(
      state.copyWith(
        isLoading: false,
        fetchApiUrlOrFailureOption: none(),
      ),
    );
  }

  FutureOr<void> saveApiKey(RemoteConfig<String, String> remoteConfig) async {
    emit(
      state.copyWith(
        isLoading: true,
        status: SplashStatus.saveApiKey,
      ),
    );
    final result = await _saveRemoteConfigApiKey(
      RemoteConfigParams(remoteConfig: remoteConfig),
    );
    emit(state.copyWith(saveApiKeyOrFailureOption: optionOf(result)));
    emit(
      state.copyWith(
        isLoading: false,
        saveApiKeyOrFailureOption: none(),
      ),
    );
  }

  FutureOr<void> saveApiUrl(RemoteConfig<String, String> remoteConfig) async {
    emit(
      state.copyWith(
        isLoading: true,
        status: SplashStatus.saveApiUrl,
      ),
    );
    final result = await _saveRemoteConfigApiUrl(
      RemoteConfigParams(remoteConfig: remoteConfig),
    );
    emit(state.copyWith(saveApiUrlOrFailureOption: optionOf(result)));
    emit(
      state.copyWith(
        isLoading: false,
        saveApiUrlOrFailureOption: none(),
        status: SplashStatus.done,
      ),
    );
  }
}
