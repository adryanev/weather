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

/// @nodoc
class _$ResponseWeatherTearOff {
  const _$ResponseWeatherTearOff();

  _ResponseWeather call(
      {required double latitude,
      required double longitude,
      required String resolvedAddress,
      required String address,
      required String timezone,
      required int timezoneOffset,
      required String description}) {
    return _ResponseWeather(
      latitude: latitude,
      longitude: longitude,
      resolvedAddress: resolvedAddress,
      address: address,
      timezone: timezone,
      timezoneOffset: timezoneOffset,
      description: description,
    );
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
  int get timezoneOffset => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

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
      int timezoneOffset,
      String description});
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
              as int,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
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
      int timezoneOffset,
      String description});
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
              as int,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ResponseWeather implements _ResponseWeather {
  const _$_ResponseWeather(
      {required this.latitude,
      required this.longitude,
      required this.resolvedAddress,
      required this.address,
      required this.timezone,
      required this.timezoneOffset,
      required this.description});

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
  final int timezoneOffset;
  @override
  final String description;

  @override
  String toString() {
    return 'ResponseWeather(latitude: $latitude, longitude: $longitude, resolvedAddress: $resolvedAddress, address: $address, timezone: $timezone, timezoneOffset: $timezoneOffset, description: $description)';
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
                .equals(other.description, description));
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
      const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  _$ResponseWeatherCopyWith<_ResponseWeather> get copyWith =>
      __$ResponseWeatherCopyWithImpl<_ResponseWeather>(this, _$identity);
}

abstract class _ResponseWeather implements ResponseWeather {
  const factory _ResponseWeather(
      {required double latitude,
      required double longitude,
      required String resolvedAddress,
      required String address,
      required String timezone,
      required int timezoneOffset,
      required String description}) = _$_ResponseWeather;

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
  int get timezoneOffset;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$ResponseWeatherCopyWith<_ResponseWeather> get copyWith =>
      throw _privateConstructorUsedError;
}
