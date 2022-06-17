// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ResponseWeather _$$_ResponseWeatherFromJson(Map<String, dynamic> json) =>
    _$_ResponseWeather(
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      resolvedAddress: json['resolvedAddress'] as String,
      address: json['address'] as String,
      timezone: json['timezone'] as String,
      timezoneOffset: json['timezoneOffset'] as int?,
      description: json['description'] as String,
      days: (json['days'] as List<dynamic>?)
          ?.map((e) => ResponseWeatherData.fromJson(e as Map<String, dynamic>))
          .toList(),
      currentConditions: json['currentConditions'] == null
          ? null
          : ResponseWeatherData.fromJson(
              json['currentConditions'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ResponseWeatherToJson(_$_ResponseWeather instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'resolvedAddress': instance.resolvedAddress,
      'address': instance.address,
      'timezone': instance.timezone,
      'timezoneOffset': instance.timezoneOffset,
      'description': instance.description,
      'days': instance.days,
      'currentConditions': instance.currentConditions,
    };

_$_ResponseWeatherData _$$_ResponseWeatherDataFromJson(
        Map<String, dynamic> json) =>
    _$_ResponseWeatherData(
      datetime: json['datetime'] as String,
      datetimeEpoch: json['datetimeEpoch'] as int,
      temperature: (json['temp'] as num).toDouble(),
      feelsLike: (json['feelslike'] as num).toDouble(),
      humidity: (json['humidity'] as num).toDouble(),
      dew: (json['dew'] as num).toDouble(),
      precipitation: (json['precip'] as num).toDouble(),
      precipitationProbability: (json['precipprob'] as num).toDouble(),
      snow: (json['snow'] as num).toDouble(),
      snowDepth: (json['snowdepth'] as num).toDouble(),
      precipitationTypes: (json['precipitationTypes'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      windGust: (json['windgust'] as num).toDouble(),
      windSpeed: (json['windspeed'] as num).toDouble(),
      windDirection: (json['winddir'] as num).toDouble(),
      pressure: (json['pressure'] as num).toDouble(),
      visibility: (json['visibility'] as num).toDouble(),
      cloudCover: (json['cloudcover'] as num).toDouble(),
      solarRadiation: (json['solarradiation'] as num).toDouble(),
      solarEnergy: (json['solarenergy'] as num?)?.toDouble(),
      uvIndex: (json['uvindex'] as num).toDouble(),
      severeRisk: (json['severerisk'] as num).toDouble(),
      condition: json['condition'] as String?,
      icon: json['icon'] as String?,
      stations: (json['stations'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      source: json['source'] as String,
      hours: (json['hours'] as List<dynamic>?)
          ?.map((e) => ResponseWeatherData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ResponseWeatherDataToJson(
        _$_ResponseWeatherData instance) =>
    <String, dynamic>{
      'datetime': instance.datetime,
      'datetimeEpoch': instance.datetimeEpoch,
      'temp': instance.temperature,
      'feelslike': instance.feelsLike,
      'humidity': instance.humidity,
      'dew': instance.dew,
      'precip': instance.precipitation,
      'precipprob': instance.precipitationProbability,
      'snow': instance.snow,
      'snowdepth': instance.snowDepth,
      'precipitationTypes': instance.precipitationTypes,
      'windgust': instance.windGust,
      'windspeed': instance.windSpeed,
      'winddir': instance.windDirection,
      'pressure': instance.pressure,
      'visibility': instance.visibility,
      'cloudcover': instance.cloudCover,
      'solarradiation': instance.solarRadiation,
      'solarenergy': instance.solarEnergy,
      'uvindex': instance.uvIndex,
      'severerisk': instance.severeRisk,
      'condition': instance.condition,
      'icon': instance.icon,
      'stations': instance.stations,
      'source': instance.source,
      'hours': instance.hours,
    };
