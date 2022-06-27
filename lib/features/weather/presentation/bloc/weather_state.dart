part of 'weather_bloc.dart';

@freezed
class WeatherState with _$WeatherState {
  const factory WeatherState({
    required bool isLoading,
    required Option<Either<Failure, Location>> locationOrFailureOption,
    required Option<Either<Failure, List<Weather>>> weatherListOrFailureOption,
    required Weather? currentWeather,
    required Location? location,
  }) = _WeatherState;
  factory WeatherState.initial() => WeatherState(
        isLoading: false,
        locationOrFailureOption: none(),
        weatherListOrFailureOption: none(),
        currentWeather: null,
        location: null,
      );
}
