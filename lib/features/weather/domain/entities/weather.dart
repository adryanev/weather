import 'package:freezed_annotation/freezed_annotation.dart';
part 'weather.freezed.dart';

@freezed
class Weather with _$Weather {
  const factory Weather({
    required DateTime dateTime,
    required double temperature,
    required double feelsLike,
    required double humidity,
    required double dew,
    required double precipitation,
    required double precipitationProbability,
    required double snow,
    required double snowDepth,
    required List<String>? precipitationTypes,
    required double windGust,
    required double windSpeed,
    required double windDirection,
    required double pressure,
    required double visibility,
    required double cloudCover,
    required double solarRadiation,
    required double? solarEnergy,
    required double uvIndex,
    required double severeRisk,
    required String? condition,
    required String? icon,
    required List<String>? stations,
    required String? source,
    List<Weather>? hours,
  }) = _Weather;
}
