import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather/features/weather/domain/entities/weather.dart';
part 'response_weather.freezed.dart';
part 'response_weather.g.dart';

@freezed
class ResponseWeather with _$ResponseWeather {
  const factory ResponseWeather({
    required double latitude,
    required double longitude,
    required String resolvedAddress,
    required String address,
    required String timezone,
    required int? timezoneOffset,
    required String description,
    List<ResponseWeatherData>? days,
    ResponseWeatherData? currentConditions,
  }) = _ResponseWeather;

  factory ResponseWeather.fromJson(Map<String, dynamic> json) =>
      _$ResponseWeatherFromJson(json);
}

extension ResponseWeatherX on ResponseWeather {
  List<Weather>? toDomain() => days?.map((e) => e.toDomain()).toList();
}

@freezed
class ResponseWeatherData with _$ResponseWeatherData {
  const factory ResponseWeatherData({
    required String datetime,
    required int datetimeEpoch,
    @JsonKey(name: 'temp') required double? temperature,
    @JsonKey(name: 'feelslike') required double? feelsLike,
    required double? humidity,
    required double? dew,
    @JsonKey(name: 'precip') required double? precipitation,
    @JsonKey(name: 'precipprob') required double? precipitationProbability,
    required double? snow,
    @JsonKey(name: 'snowdepth') required double? snowDepth,
    required List<String>? precipitationTypes,
    @JsonKey(name: 'windgust') required double? windGust,
    @JsonKey(name: 'windspeed') required double? windSpeed,
    @JsonKey(name: 'winddir') required double? windDirection,
    required double? pressure,
    required double? visibility,
    @JsonKey(name: 'cloudcover') required double? cloudCover,
    @JsonKey(name: 'solarradiation') required double? solarRadiation,
    @JsonKey(name: 'solarenergy') required double? solarEnergy,
    @JsonKey(name: 'uvindex') required double? uvIndex,
    @JsonKey(name: 'severerisk') required double? severeRisk,
    required String? conditions,
    required String? icon,
    required List<String>? stations,
    required String? source,
    List<ResponseWeatherData>? hours,
  }) = _ResponseWeatherData;
  factory ResponseWeatherData.fromJson(Map<String, dynamic> json) =>
      _$ResponseWeatherDataFromJson(json);
}

extension ResponseWeatherDataX on ResponseWeatherData {
  Weather toDomain() => Weather(
        dateTime: DateTime.fromMillisecondsSinceEpoch(datetimeEpoch * 1000),
        temperature: temperature ?? 0,
        feelsLike: feelsLike ?? 0,
        humidity: humidity ?? 0,
        dew: dew ?? 0,
        precipitation: precipitation ?? 0,
        precipitationProbability: precipitationProbability ?? 0,
        snow: snow ?? 0,
        snowDepth: snowDepth ?? 0,
        precipitationTypes: precipitationTypes,
        windGust: windGust ?? 0,
        windSpeed: windSpeed ?? 0,
        windDirection: windDirection ?? 0,
        pressure: pressure ?? 0,
        visibility: visibility ?? 0,
        cloudCover: cloudCover ?? 0,
        solarRadiation: solarRadiation ?? 0,
        solarEnergy: solarEnergy,
        uvIndex: uvIndex ?? 0,
        severeRisk: severeRisk ?? 0,
        condition: conditions,
        icon: icon,
        stations: stations,
        source: source,
        hours: hours?.map((e) => e.toDomain()).toList(),
      );
}
