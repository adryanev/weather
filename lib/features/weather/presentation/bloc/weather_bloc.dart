import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:weather/core/domain/failures/failure.dart';
import 'package:weather/core/domain/usecases/use_case.dart';
import 'package:weather/features/weather/domain/entities/location.dart';
import 'package:weather/features/weather/domain/entities/weather.dart';
import 'package:weather/features/weather/domain/usecases/get_current_location.dart';
import 'package:weather/features/weather/domain/usecases/get_weather_by_coordinates.dart';

part 'weather_event.dart';
part 'weather_state.dart';
part 'weather_bloc.freezed.dart';

@injectable
class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  WeatherBloc(
    this._getCurrentLocation,
    this._getWeatherByCoordinates,
  ) : super(WeatherState.initial()) {
    on<WeatherGetCurrentLocation>(_onGetLocation);
    on<WeatherGetByLocation>(_onGetByLocation);
  }
  final GetCurrentLocation _getCurrentLocation;
  final GetWeatherByCoordinates _getWeatherByCoordinates;

  FutureOr<void> _onGetByLocation(
    WeatherGetByLocation event,
    Emitter<WeatherState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    final weather = await _getWeatherByCoordinates(
      WeatherByCoordinatesParams(location: event.location),
    );
    emit(
      state.copyWith(weatherListOrFailureOption: optionOf(weather)),
    );
    emit(state.copyWith(weatherListOrFailureOption: none()));
  }

  FutureOr<void> _onGetLocation(
    WeatherGetCurrentLocation event,
    Emitter<WeatherState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    final location = await _getCurrentLocation(NoParams());
    emit(
      state.copyWith(locationOrFailureOption: optionOf(location)),
    );
    emit(state.copyWith(locationOrFailureOption: none()));
  }
}
