// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'response_weather.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResponseWeather _$ResponseWeatherFromJson(Map<String, dynamic> json) {
  return _ResponseWeather.fromJson(json);
}

/// @nodoc
class _$ResponseWeatherTearOff {
  const _$ResponseWeatherTearOff();

  _ResponseWeather call(
      {required double latitude,
      required double longitude,
      required String resolvedAddress,
      required String address,
      required String timezone,
      required int? timezoneOffset,
      required String description,
      List<ResponseWeatherData>? days,
      ResponseWeatherData? currentConditions}) {
    return _ResponseWeather(
      latitude: latitude,
      longitude: longitude,
      resolvedAddress: resolvedAddress,
      address: address,
      timezone: timezone,
      timezoneOffset: timezoneOffset,
      description: description,
      days: days,
      currentConditions: currentConditions,
    );
  }

  ResponseWeather fromJson(Map<String, Object?> json) {
    return ResponseWeather.fromJson(json);
  }
}

/// @nodoc
const $ResponseWeather = _$ResponseWeatherTearOff();

/// @nodoc
mixin _$ResponseWeather {
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  String get resolvedAddress => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get timezone => throw _privateConstructorUsedError;
  int? get timezoneOffset => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<ResponseWeatherData>? get days => throw _privateConstructorUsedError;
  ResponseWeatherData? get currentConditions =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseWeatherCopyWith<ResponseWeather> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseWeatherCopyWith<$Res> {
  factory $ResponseWeatherCopyWith(
          ResponseWeather value, $Res Function(ResponseWeather) then) =
      _$ResponseWeatherCopyWithImpl<$Res>;
  $Res call(
      {double latitude,
      double longitude,
      String resolvedAddress,
      String address,
      String timezone,
      int? timezoneOffset,
      String description,
      List<ResponseWeatherData>? days,
      ResponseWeatherData? currentConditions});

  $ResponseWeatherDataCopyWith<$Res>? get currentConditions;
}

/// @nodoc
class _$ResponseWeatherCopyWithImpl<$Res>
    implements $ResponseWeatherCopyWith<$Res> {
  _$ResponseWeatherCopyWithImpl(this._value, this._then);

  final ResponseWeather _value;
  // ignore: unused_field
  final $Res Function(ResponseWeather) _then;

  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? resolvedAddress = freezed,
    Object? address = freezed,
    Object? timezone = freezed,
    Object? timezoneOffset = freezed,
    Object? description = freezed,
    Object? days = freezed,
    Object? currentConditions = freezed,
  }) {
    return _then(_value.copyWith(
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      resolvedAddress: resolvedAddress == freezed
          ? _value.resolvedAddress
          : resolvedAddress // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      timezone: timezone == freezed
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String,
      timezoneOffset: timezoneOffset == freezed
          ? _value.timezoneOffset
          : timezoneOffset // ignore: cast_nullable_to_non_nullable
              as int?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      days: days == freezed
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as List<ResponseWeatherData>?,
      currentConditions: currentConditions == freezed
          ? _value.currentConditions
          : currentConditions // ignore: cast_nullable_to_non_nullable
              as ResponseWeatherData?,
    ));
  }

  @override
  $ResponseWeatherDataCopyWith<$Res>? get currentConditions {
    if (_value.currentConditions == null) {
      return null;
    }

    return $ResponseWeatherDataCopyWith<$Res>(_value.currentConditions!,
        (value) {
      return _then(_value.copyWith(currentConditions: value));
    });
  }
}

/// @nodoc
abstract class _$ResponseWeatherCopyWith<$Res>
    implements $ResponseWeatherCopyWith<$Res> {
  factory _$ResponseWeatherCopyWith(
          _ResponseWeather value, $Res Function(_ResponseWeather) then) =
      __$ResponseWeatherCopyWithImpl<$Res>;
  @override
  $Res call(
      {double latitude,
      double longitude,
      String resolvedAddress,
      String address,
      String timezone,
      int? timezoneOffset,
      String description,
      List<ResponseWeatherData>? days,
      ResponseWeatherData? currentConditions});

  @override
  $ResponseWeatherDataCopyWith<$Res>? get currentConditions;
}

/// @nodoc
class __$ResponseWeatherCopyWithImpl<$Res>
    extends _$ResponseWeatherCopyWithImpl<$Res>
    implements _$ResponseWeatherCopyWith<$Res> {
  __$ResponseWeatherCopyWithImpl(
      _ResponseWeather _value, $Res Function(_ResponseWeather) _then)
      : super(_value, (v) => _then(v as _ResponseWeather));

  @override
  _ResponseWeather get _value => super._value as _ResponseWeather;

  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? resolvedAddress = freezed,
    Object? address = freezed,
    Object? timezone = freezed,
    Object? timezoneOffset = freezed,
    Object? description = freezed,
    Object? days = freezed,
    Object? currentConditions = freezed,
  }) {
    return _then(_ResponseWeather(
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      resolvedAddress: resolvedAddress == freezed
          ? _value.resolvedAddress
          : resolvedAddress // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      timezone: timezone == freezed
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String,
      timezoneOffset: timezoneOffset == freezed
          ? _value.timezoneOffset
          : timezoneOffset // ignore: cast_nullable_to_non_nullable
              as int?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      days: days == freezed
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as List<ResponseWeatherData>?,
      currentConditions: currentConditions == freezed
          ? _value.currentConditions
          : currentConditions // ignore: cast_nullable_to_non_nullable
              as ResponseWeatherData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResponseWeather implements _ResponseWeather {
  const _$_ResponseWeather(
      {required this.latitude,
      required this.longitude,
      required this.resolvedAddress,
      required this.address,
      required this.timezone,
      required this.timezoneOffset,
      required this.description,
      this.days,
      this.currentConditions});

  factory _$_ResponseWeather.fromJson(Map<String, dynamic> json) =>
      _$$_ResponseWeatherFromJson(json);

  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final String resolvedAddress;
  @override
  final String address;
  @override
  final String timezone;
  @override
  final int? timezoneOffset;
  @override
  final String description;
  @override
  final List<ResponseWeatherData>? days;
  @override
  final ResponseWeatherData? currentConditions;

  @override
  String toString() {
    return 'ResponseWeather(latitude: $latitude, longitude: $longitude, resolvedAddress: $resolvedAddress, address: $address, timezone: $timezone, timezoneOffset: $timezoneOffset, description: $description, days: $days, currentConditions: $currentConditions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ResponseWeather &&
            const DeepCollectionEquality().equals(other.latitude, latitude) &&
            const DeepCollectionEquality().equals(other.longitude, longitude) &&
            const DeepCollectionEquality()
                .equals(other.resolvedAddress, resolvedAddress) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality().equals(other.timezone, timezone) &&
            const DeepCollectionEquality()
                .equals(other.timezoneOffset, timezoneOffset) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.days, days) &&
            const DeepCollectionEquality()
                .equals(other.currentConditions, currentConditions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(latitude),
      const DeepCollectionEquality().hash(longitude),
      const DeepCollectionEquality().hash(resolvedAddress),
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(timezone),
      const DeepCollectionEquality().hash(timezoneOffset),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(days),
      const DeepCollectionEquality().hash(currentConditions));

  @JsonKey(ignore: true)
  @override
  _$ResponseWeatherCopyWith<_ResponseWeather> get copyWith =>
      __$ResponseWeatherCopyWithImpl<_ResponseWeather>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResponseWeatherToJson(this);
  }
}

abstract class _ResponseWeather implements ResponseWeather {
  const factory _ResponseWeather(
      {required double latitude,
      required double longitude,
      required String resolvedAddress,
      required String address,
      required String timezone,
      required int? timezoneOffset,
      required String description,
      List<ResponseWeatherData>? days,
      ResponseWeatherData? currentConditions}) = _$_ResponseWeather;

  factory _ResponseWeather.fromJson(Map<String, dynamic> json) =
      _$_ResponseWeather.fromJson;

  @override
  double get latitude;
  @override
  double get longitude;
  @override
  String get resolvedAddress;
  @override
  String get address;
  @override
  String get timezone;
  @override
  int? get timezoneOffset;
  @override
  String get description;
  @override
  List<ResponseWeatherData>? get days;
  @override
  ResponseWeatherData? get currentConditions;
  @override
  @JsonKey(ignore: true)
  _$ResponseWeatherCopyWith<_ResponseWeather> get copyWith =>
      throw _privateConstructorUsedError;
}

ResponseWeatherData _$ResponseWeatherDataFromJson(Map<String, dynamic> json) {
  return _ResponseWeatherData.fromJson(json);
}

/// @nodoc
class _$ResponseWeatherDataTearOff {
  const _$ResponseWeatherDataTearOff();

  _ResponseWeatherData call(
      {required String datetime,
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
      List<ResponseWeatherData>? hours}) {
    return _ResponseWeatherData(
      datetime: datetime,
      datetimeEpoch: datetimeEpoch,
      temperature: temperature,
      feelsLike: feelsLike,
      humidity: humidity,
      dew: dew,
      precipitation: precipitation,
      precipitationProbability: precipitationProbability,
      snow: snow,
      snowDepth: snowDepth,
      precipitationTypes: precipitationTypes,
      windGust: windGust,
      windSpeed: windSpeed,
      windDirection: windDirection,
      pressure: pressure,
      visibility: visibility,
      cloudCover: cloudCover,
      solarRadiation: solarRadiation,
      solarEnergy: solarEnergy,
      uvIndex: uvIndex,
      severeRisk: severeRisk,
      conditions: conditions,
      icon: icon,
      stations: stations,
      source: source,
      hours: hours,
    );
  }

  ResponseWeatherData fromJson(Map<String, Object?> json) {
    return ResponseWeatherData.fromJson(json);
  }
}

/// @nodoc
const $ResponseWeatherData = _$ResponseWeatherDataTearOff();

/// @nodoc
mixin _$ResponseWeatherData {
  String get datetime => throw _privateConstructorUsedError;
  int get datetimeEpoch => throw _privateConstructorUsedError;
  @JsonKey(name: 'temp')
  double? get temperature => throw _privateConstructorUsedError;
  @JsonKey(name: 'feelslike')
  double? get feelsLike => throw _privateConstructorUsedError;
  double? get humidity => throw _privateConstructorUsedError;
  double? get dew => throw _privateConstructorUsedError;
  @JsonKey(name: 'precip')
  double? get precipitation => throw _privateConstructorUsedError;
  @JsonKey(name: 'precipprob')
  double? get precipitationProbability => throw _privateConstructorUsedError;
  double? get snow => throw _privateConstructorUsedError;
  @JsonKey(name: 'snowdepth')
  double? get snowDepth => throw _privateConstructorUsedError;
  List<String>? get precipitationTypes => throw _privateConstructorUsedError;
  @JsonKey(name: 'windgust')
  double? get windGust => throw _privateConstructorUsedError;
  @JsonKey(name: 'windspeed')
  double? get windSpeed => throw _privateConstructorUsedError;
  @JsonKey(name: 'winddir')
  double? get windDirection => throw _privateConstructorUsedError;
  double? get pressure => throw _privateConstructorUsedError;
  double? get visibility => throw _privateConstructorUsedError;
  @JsonKey(name: 'cloudcover')
  double? get cloudCover => throw _privateConstructorUsedError;
  @JsonKey(name: 'solarradiation')
  double? get solarRadiation => throw _privateConstructorUsedError;
  @JsonKey(name: 'solarenergy')
  double? get solarEnergy => throw _privateConstructorUsedError;
  @JsonKey(name: 'uvindex')
  double? get uvIndex => throw _privateConstructorUsedError;
  @JsonKey(name: 'severerisk')
  double? get severeRisk => throw _privateConstructorUsedError;
  String? get conditions => throw _privateConstructorUsedError;
  String? get icon => throw _privateConstructorUsedError;
  List<String>? get stations => throw _privateConstructorUsedError;
  String? get source => throw _privateConstructorUsedError;
  List<ResponseWeatherData>? get hours => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseWeatherDataCopyWith<ResponseWeatherData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseWeatherDataCopyWith<$Res> {
  factory $ResponseWeatherDataCopyWith(
          ResponseWeatherData value, $Res Function(ResponseWeatherData) then) =
      _$ResponseWeatherDataCopyWithImpl<$Res>;
  $Res call(
      {String datetime,
      int datetimeEpoch,
      @JsonKey(name: 'temp') double? temperature,
      @JsonKey(name: 'feelslike') double? feelsLike,
      double? humidity,
      double? dew,
      @JsonKey(name: 'precip') double? precipitation,
      @JsonKey(name: 'precipprob') double? precipitationProbability,
      double? snow,
      @JsonKey(name: 'snowdepth') double? snowDepth,
      List<String>? precipitationTypes,
      @JsonKey(name: 'windgust') double? windGust,
      @JsonKey(name: 'windspeed') double? windSpeed,
      @JsonKey(name: 'winddir') double? windDirection,
      double? pressure,
      double? visibility,
      @JsonKey(name: 'cloudcover') double? cloudCover,
      @JsonKey(name: 'solarradiation') double? solarRadiation,
      @JsonKey(name: 'solarenergy') double? solarEnergy,
      @JsonKey(name: 'uvindex') double? uvIndex,
      @JsonKey(name: 'severerisk') double? severeRisk,
      String? conditions,
      String? icon,
      List<String>? stations,
      String? source,
      List<ResponseWeatherData>? hours});
}

/// @nodoc
class _$ResponseWeatherDataCopyWithImpl<$Res>
    implements $ResponseWeatherDataCopyWith<$Res> {
  _$ResponseWeatherDataCopyWithImpl(this._value, this._then);

  final ResponseWeatherData _value;
  // ignore: unused_field
  final $Res Function(ResponseWeatherData) _then;

  @override
  $Res call({
    Object? datetime = freezed,
    Object? datetimeEpoch = freezed,
    Object? temperature = freezed,
    Object? feelsLike = freezed,
    Object? humidity = freezed,
    Object? dew = freezed,
    Object? precipitation = freezed,
    Object? precipitationProbability = freezed,
    Object? snow = freezed,
    Object? snowDepth = freezed,
    Object? precipitationTypes = freezed,
    Object? windGust = freezed,
    Object? windSpeed = freezed,
    Object? windDirection = freezed,
    Object? pressure = freezed,
    Object? visibility = freezed,
    Object? cloudCover = freezed,
    Object? solarRadiation = freezed,
    Object? solarEnergy = freezed,
    Object? uvIndex = freezed,
    Object? severeRisk = freezed,
    Object? conditions = freezed,
    Object? icon = freezed,
    Object? stations = freezed,
    Object? source = freezed,
    Object? hours = freezed,
  }) {
    return _then(_value.copyWith(
      datetime: datetime == freezed
          ? _value.datetime
          : datetime // ignore: cast_nullable_to_non_nullable
              as String,
      datetimeEpoch: datetimeEpoch == freezed
          ? _value.datetimeEpoch
          : datetimeEpoch // ignore: cast_nullable_to_non_nullable
              as int,
      temperature: temperature == freezed
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double?,
      feelsLike: feelsLike == freezed
          ? _value.feelsLike
          : feelsLike // ignore: cast_nullable_to_non_nullable
              as double?,
      humidity: humidity == freezed
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as double?,
      dew: dew == freezed
          ? _value.dew
          : dew // ignore: cast_nullable_to_non_nullable
              as double?,
      precipitation: precipitation == freezed
          ? _value.precipitation
          : precipitation // ignore: cast_nullable_to_non_nullable
              as double?,
      precipitationProbability: precipitationProbability == freezed
          ? _value.precipitationProbability
          : precipitationProbability // ignore: cast_nullable_to_non_nullable
              as double?,
      snow: snow == freezed
          ? _value.snow
          : snow // ignore: cast_nullable_to_non_nullable
              as double?,
      snowDepth: snowDepth == freezed
          ? _value.snowDepth
          : snowDepth // ignore: cast_nullable_to_non_nullable
              as double?,
      precipitationTypes: precipitationTypes == freezed
          ? _value.precipitationTypes
          : precipitationTypes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      windGust: windGust == freezed
          ? _value.windGust
          : windGust // ignore: cast_nullable_to_non_nullable
              as double?,
      windSpeed: windSpeed == freezed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as double?,
      windDirection: windDirection == freezed
          ? _value.windDirection
          : windDirection // ignore: cast_nullable_to_non_nullable
              as double?,
      pressure: pressure == freezed
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as double?,
      visibility: visibility == freezed
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as double?,
      cloudCover: cloudCover == freezed
          ? _value.cloudCover
          : cloudCover // ignore: cast_nullable_to_non_nullable
              as double?,
      solarRadiation: solarRadiation == freezed
          ? _value.solarRadiation
          : solarRadiation // ignore: cast_nullable_to_non_nullable
              as double?,
      solarEnergy: solarEnergy == freezed
          ? _value.solarEnergy
          : solarEnergy // ignore: cast_nullable_to_non_nullable
              as double?,
      uvIndex: uvIndex == freezed
          ? _value.uvIndex
          : uvIndex // ignore: cast_nullable_to_non_nullable
              as double?,
      severeRisk: severeRisk == freezed
          ? _value.severeRisk
          : severeRisk // ignore: cast_nullable_to_non_nullable
              as double?,
      conditions: conditions == freezed
          ? _value.conditions
          : conditions // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      stations: stations == freezed
          ? _value.stations
          : stations // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      source: source == freezed
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
      hours: hours == freezed
          ? _value.hours
          : hours // ignore: cast_nullable_to_non_nullable
              as List<ResponseWeatherData>?,
    ));
  }
}

/// @nodoc
abstract class _$ResponseWeatherDataCopyWith<$Res>
    implements $ResponseWeatherDataCopyWith<$Res> {
  factory _$ResponseWeatherDataCopyWith(_ResponseWeatherData value,
          $Res Function(_ResponseWeatherData) then) =
      __$ResponseWeatherDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {String datetime,
      int datetimeEpoch,
      @JsonKey(name: 'temp') double? temperature,
      @JsonKey(name: 'feelslike') double? feelsLike,
      double? humidity,
      double? dew,
      @JsonKey(name: 'precip') double? precipitation,
      @JsonKey(name: 'precipprob') double? precipitationProbability,
      double? snow,
      @JsonKey(name: 'snowdepth') double? snowDepth,
      List<String>? precipitationTypes,
      @JsonKey(name: 'windgust') double? windGust,
      @JsonKey(name: 'windspeed') double? windSpeed,
      @JsonKey(name: 'winddir') double? windDirection,
      double? pressure,
      double? visibility,
      @JsonKey(name: 'cloudcover') double? cloudCover,
      @JsonKey(name: 'solarradiation') double? solarRadiation,
      @JsonKey(name: 'solarenergy') double? solarEnergy,
      @JsonKey(name: 'uvindex') double? uvIndex,
      @JsonKey(name: 'severerisk') double? severeRisk,
      String? conditions,
      String? icon,
      List<String>? stations,
      String? source,
      List<ResponseWeatherData>? hours});
}

/// @nodoc
class __$ResponseWeatherDataCopyWithImpl<$Res>
    extends _$ResponseWeatherDataCopyWithImpl<$Res>
    implements _$ResponseWeatherDataCopyWith<$Res> {
  __$ResponseWeatherDataCopyWithImpl(
      _ResponseWeatherData _value, $Res Function(_ResponseWeatherData) _then)
      : super(_value, (v) => _then(v as _ResponseWeatherData));

  @override
  _ResponseWeatherData get _value => super._value as _ResponseWeatherData;

  @override
  $Res call({
    Object? datetime = freezed,
    Object? datetimeEpoch = freezed,
    Object? temperature = freezed,
    Object? feelsLike = freezed,
    Object? humidity = freezed,
    Object? dew = freezed,
    Object? precipitation = freezed,
    Object? precipitationProbability = freezed,
    Object? snow = freezed,
    Object? snowDepth = freezed,
    Object? precipitationTypes = freezed,
    Object? windGust = freezed,
    Object? windSpeed = freezed,
    Object? windDirection = freezed,
    Object? pressure = freezed,
    Object? visibility = freezed,
    Object? cloudCover = freezed,
    Object? solarRadiation = freezed,
    Object? solarEnergy = freezed,
    Object? uvIndex = freezed,
    Object? severeRisk = freezed,
    Object? conditions = freezed,
    Object? icon = freezed,
    Object? stations = freezed,
    Object? source = freezed,
    Object? hours = freezed,
  }) {
    return _then(_ResponseWeatherData(
      datetime: datetime == freezed
          ? _value.datetime
          : datetime // ignore: cast_nullable_to_non_nullable
              as String,
      datetimeEpoch: datetimeEpoch == freezed
          ? _value.datetimeEpoch
          : datetimeEpoch // ignore: cast_nullable_to_non_nullable
              as int,
      temperature: temperature == freezed
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double?,
      feelsLike: feelsLike == freezed
          ? _value.feelsLike
          : feelsLike // ignore: cast_nullable_to_non_nullable
              as double?,
      humidity: humidity == freezed
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as double?,
      dew: dew == freezed
          ? _value.dew
          : dew // ignore: cast_nullable_to_non_nullable
              as double?,
      precipitation: precipitation == freezed
          ? _value.precipitation
          : precipitation // ignore: cast_nullable_to_non_nullable
              as double?,
      precipitationProbability: precipitationProbability == freezed
          ? _value.precipitationProbability
          : precipitationProbability // ignore: cast_nullable_to_non_nullable
              as double?,
      snow: snow == freezed
          ? _value.snow
          : snow // ignore: cast_nullable_to_non_nullable
              as double?,
      snowDepth: snowDepth == freezed
          ? _value.snowDepth
          : snowDepth // ignore: cast_nullable_to_non_nullable
              as double?,
      precipitationTypes: precipitationTypes == freezed
          ? _value.precipitationTypes
          : precipitationTypes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      windGust: windGust == freezed
          ? _value.windGust
          : windGust // ignore: cast_nullable_to_non_nullable
              as double?,
      windSpeed: windSpeed == freezed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as double?,
      windDirection: windDirection == freezed
          ? _value.windDirection
          : windDirection // ignore: cast_nullable_to_non_nullable
              as double?,
      pressure: pressure == freezed
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as double?,
      visibility: visibility == freezed
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as double?,
      cloudCover: cloudCover == freezed
          ? _value.cloudCover
          : cloudCover // ignore: cast_nullable_to_non_nullable
              as double?,
      solarRadiation: solarRadiation == freezed
          ? _value.solarRadiation
          : solarRadiation // ignore: cast_nullable_to_non_nullable
              as double?,
      solarEnergy: solarEnergy == freezed
          ? _value.solarEnergy
          : solarEnergy // ignore: cast_nullable_to_non_nullable
              as double?,
      uvIndex: uvIndex == freezed
          ? _value.uvIndex
          : uvIndex // ignore: cast_nullable_to_non_nullable
              as double?,
      severeRisk: severeRisk == freezed
          ? _value.severeRisk
          : severeRisk // ignore: cast_nullable_to_non_nullable
              as double?,
      conditions: conditions == freezed
          ? _value.conditions
          : conditions // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      stations: stations == freezed
          ? _value.stations
          : stations // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      source: source == freezed
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
      hours: hours == freezed
          ? _value.hours
          : hours // ignore: cast_nullable_to_non_nullable
              as List<ResponseWeatherData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResponseWeatherData implements _ResponseWeatherData {
  const _$_ResponseWeatherData(
      {required this.datetime,
      required this.datetimeEpoch,
      @JsonKey(name: 'temp') required this.temperature,
      @JsonKey(name: 'feelslike') required this.feelsLike,
      required this.humidity,
      required this.dew,
      @JsonKey(name: 'precip') required this.precipitation,
      @JsonKey(name: 'precipprob') required this.precipitationProbability,
      required this.snow,
      @JsonKey(name: 'snowdepth') required this.snowDepth,
      required this.precipitationTypes,
      @JsonKey(name: 'windgust') required this.windGust,
      @JsonKey(name: 'windspeed') required this.windSpeed,
      @JsonKey(name: 'winddir') required this.windDirection,
      required this.pressure,
      required this.visibility,
      @JsonKey(name: 'cloudcover') required this.cloudCover,
      @JsonKey(name: 'solarradiation') required this.solarRadiation,
      @JsonKey(name: 'solarenergy') required this.solarEnergy,
      @JsonKey(name: 'uvindex') required this.uvIndex,
      @JsonKey(name: 'severerisk') required this.severeRisk,
      required this.conditions,
      required this.icon,
      required this.stations,
      required this.source,
      this.hours});

  factory _$_ResponseWeatherData.fromJson(Map<String, dynamic> json) =>
      _$$_ResponseWeatherDataFromJson(json);

  @override
  final String datetime;
  @override
  final int datetimeEpoch;
  @override
  @JsonKey(name: 'temp')
  final double? temperature;
  @override
  @JsonKey(name: 'feelslike')
  final double? feelsLike;
  @override
  final double? humidity;
  @override
  final double? dew;
  @override
  @JsonKey(name: 'precip')
  final double? precipitation;
  @override
  @JsonKey(name: 'precipprob')
  final double? precipitationProbability;
  @override
  final double? snow;
  @override
  @JsonKey(name: 'snowdepth')
  final double? snowDepth;
  @override
  final List<String>? precipitationTypes;
  @override
  @JsonKey(name: 'windgust')
  final double? windGust;
  @override
  @JsonKey(name: 'windspeed')
  final double? windSpeed;
  @override
  @JsonKey(name: 'winddir')
  final double? windDirection;
  @override
  final double? pressure;
  @override
  final double? visibility;
  @override
  @JsonKey(name: 'cloudcover')
  final double? cloudCover;
  @override
  @JsonKey(name: 'solarradiation')
  final double? solarRadiation;
  @override
  @JsonKey(name: 'solarenergy')
  final double? solarEnergy;
  @override
  @JsonKey(name: 'uvindex')
  final double? uvIndex;
  @override
  @JsonKey(name: 'severerisk')
  final double? severeRisk;
  @override
  final String? conditions;
  @override
  final String? icon;
  @override
  final List<String>? stations;
  @override
  final String? source;
  @override
  final List<ResponseWeatherData>? hours;

  @override
  String toString() {
    return 'ResponseWeatherData(datetime: $datetime, datetimeEpoch: $datetimeEpoch, temperature: $temperature, feelsLike: $feelsLike, humidity: $humidity, dew: $dew, precipitation: $precipitation, precipitationProbability: $precipitationProbability, snow: $snow, snowDepth: $snowDepth, precipitationTypes: $precipitationTypes, windGust: $windGust, windSpeed: $windSpeed, windDirection: $windDirection, pressure: $pressure, visibility: $visibility, cloudCover: $cloudCover, solarRadiation: $solarRadiation, solarEnergy: $solarEnergy, uvIndex: $uvIndex, severeRisk: $severeRisk, conditions: $conditions, icon: $icon, stations: $stations, source: $source, hours: $hours)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ResponseWeatherData &&
            const DeepCollectionEquality().equals(other.datetime, datetime) &&
            const DeepCollectionEquality()
                .equals(other.datetimeEpoch, datetimeEpoch) &&
            const DeepCollectionEquality()
                .equals(other.temperature, temperature) &&
            const DeepCollectionEquality().equals(other.feelsLike, feelsLike) &&
            const DeepCollectionEquality().equals(other.humidity, humidity) &&
            const DeepCollectionEquality().equals(other.dew, dew) &&
            const DeepCollectionEquality()
                .equals(other.precipitation, precipitation) &&
            const DeepCollectionEquality().equals(
                other.precipitationProbability, precipitationProbability) &&
            const DeepCollectionEquality().equals(other.snow, snow) &&
            const DeepCollectionEquality().equals(other.snowDepth, snowDepth) &&
            const DeepCollectionEquality()
                .equals(other.precipitationTypes, precipitationTypes) &&
            const DeepCollectionEquality().equals(other.windGust, windGust) &&
            const DeepCollectionEquality().equals(other.windSpeed, windSpeed) &&
            const DeepCollectionEquality()
                .equals(other.windDirection, windDirection) &&
            const DeepCollectionEquality().equals(other.pressure, pressure) &&
            const DeepCollectionEquality()
                .equals(other.visibility, visibility) &&
            const DeepCollectionEquality()
                .equals(other.cloudCover, cloudCover) &&
            const DeepCollectionEquality()
                .equals(other.solarRadiation, solarRadiation) &&
            const DeepCollectionEquality()
                .equals(other.solarEnergy, solarEnergy) &&
            const DeepCollectionEquality().equals(other.uvIndex, uvIndex) &&
            const DeepCollectionEquality()
                .equals(other.severeRisk, severeRisk) &&
            const DeepCollectionEquality()
                .equals(other.conditions, conditions) &&
            const DeepCollectionEquality().equals(other.icon, icon) &&
            const DeepCollectionEquality().equals(other.stations, stations) &&
            const DeepCollectionEquality().equals(other.source, source) &&
            const DeepCollectionEquality().equals(other.hours, hours));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(datetime),
        const DeepCollectionEquality().hash(datetimeEpoch),
        const DeepCollectionEquality().hash(temperature),
        const DeepCollectionEquality().hash(feelsLike),
        const DeepCollectionEquality().hash(humidity),
        const DeepCollectionEquality().hash(dew),
        const DeepCollectionEquality().hash(precipitation),
        const DeepCollectionEquality().hash(precipitationProbability),
        const DeepCollectionEquality().hash(snow),
        const DeepCollectionEquality().hash(snowDepth),
        const DeepCollectionEquality().hash(precipitationTypes),
        const DeepCollectionEquality().hash(windGust),
        const DeepCollectionEquality().hash(windSpeed),
        const DeepCollectionEquality().hash(windDirection),
        const DeepCollectionEquality().hash(pressure),
        const DeepCollectionEquality().hash(visibility),
        const DeepCollectionEquality().hash(cloudCover),
        const DeepCollectionEquality().hash(solarRadiation),
        const DeepCollectionEquality().hash(solarEnergy),
        const DeepCollectionEquality().hash(uvIndex),
        const DeepCollectionEquality().hash(severeRisk),
        const DeepCollectionEquality().hash(conditions),
        const DeepCollectionEquality().hash(icon),
        const DeepCollectionEquality().hash(stations),
        const DeepCollectionEquality().hash(source),
        const DeepCollectionEquality().hash(hours)
      ]);

  @JsonKey(ignore: true)
  @override
  _$ResponseWeatherDataCopyWith<_ResponseWeatherData> get copyWith =>
      __$ResponseWeatherDataCopyWithImpl<_ResponseWeatherData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResponseWeatherDataToJson(this);
  }
}

abstract class _ResponseWeatherData implements ResponseWeatherData {
  const factory _ResponseWeatherData(
      {required String datetime,
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
      List<ResponseWeatherData>? hours}) = _$_ResponseWeatherData;

  factory _ResponseWeatherData.fromJson(Map<String, dynamic> json) =
      _$_ResponseWeatherData.fromJson;

  @override
  String get datetime;
  @override
  int get datetimeEpoch;
  @override
  @JsonKey(name: 'temp')
  double? get temperature;
  @override
  @JsonKey(name: 'feelslike')
  double? get feelsLike;
  @override
  double? get humidity;
  @override
  double? get dew;
  @override
  @JsonKey(name: 'precip')
  double? get precipitation;
  @override
  @JsonKey(name: 'precipprob')
  double? get precipitationProbability;
  @override
  double? get snow;
  @override
  @JsonKey(name: 'snowdepth')
  double? get snowDepth;
  @override
  List<String>? get precipitationTypes;
  @override
  @JsonKey(name: 'windgust')
  double? get windGust;
  @override
  @JsonKey(name: 'windspeed')
  double? get windSpeed;
  @override
  @JsonKey(name: 'winddir')
  double? get windDirection;
  @override
  double? get pressure;
  @override
  double? get visibility;
  @override
  @JsonKey(name: 'cloudcover')
  double? get cloudCover;
  @override
  @JsonKey(name: 'solarradiation')
  double? get solarRadiation;
  @override
  @JsonKey(name: 'solarenergy')
  double? get solarEnergy;
  @override
  @JsonKey(name: 'uvindex')
  double? get uvIndex;
  @override
  @JsonKey(name: 'severerisk')
  double? get severeRisk;
  @override
  String? get conditions;
  @override
  String? get icon;
  @override
  List<String>? get stations;
  @override
  String? get source;
  @override
  List<ResponseWeatherData>? get hours;
  @override
  @JsonKey(ignore: true)
  _$ResponseWeatherDataCopyWith<_ResponseWeatherData> get copyWith =>
      throw _privateConstructorUsedError;
}
