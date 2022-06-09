import 'package:freezed_annotation/freezed_annotation.dart';
part 'response_weather.freezed.dart';

@freezed
class ResponseWeather with _$ResponseWeather {
  const factory ResponseWeather({
    required double latitude,
    required double longitude,
    required String resolvedAddress,
    required String address,
    required String timezone,
    required int timezoneOffset,
    required String description,
  }) = _ResponseWeather;
}
