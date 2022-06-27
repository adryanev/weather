// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'weather_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$WeatherEventTearOff {
  const _$WeatherEventTearOff();

  _Started started() {
    return const _Started();
  }

  WeatherGetCurrentLocation getCurrentLocation() {
    return const WeatherGetCurrentLocation();
  }

  WeatherGetByLocation getWeatherByLocation(Location location) {
    return WeatherGetByLocation(
      location,
    );
  }
}

/// @nodoc
const $WeatherEvent = _$WeatherEventTearOff();

/// @nodoc
mixin _$WeatherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getCurrentLocation,
    required TResult Function(Location location) getWeatherByLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getCurrentLocation,
    TResult Function(Location location)? getWeatherByLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getCurrentLocation,
    TResult Function(Location location)? getWeatherByLocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(WeatherGetCurrentLocation value)
        getCurrentLocation,
    required TResult Function(WeatherGetByLocation value) getWeatherByLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(WeatherGetCurrentLocation value)? getCurrentLocation,
    TResult Function(WeatherGetByLocation value)? getWeatherByLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(WeatherGetCurrentLocation value)? getCurrentLocation,
    TResult Function(WeatherGetByLocation value)? getWeatherByLocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherEventCopyWith<$Res> {
  factory $WeatherEventCopyWith(
          WeatherEvent value, $Res Function(WeatherEvent) then) =
      _$WeatherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$WeatherEventCopyWithImpl<$Res> implements $WeatherEventCopyWith<$Res> {
  _$WeatherEventCopyWithImpl(this._value, this._then);

  final WeatherEvent _value;
  // ignore: unused_field
  final $Res Function(WeatherEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$WeatherEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'WeatherEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getCurrentLocation,
    required TResult Function(Location location) getWeatherByLocation,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getCurrentLocation,
    TResult Function(Location location)? getWeatherByLocation,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getCurrentLocation,
    TResult Function(Location location)? getWeatherByLocation,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(WeatherGetCurrentLocation value)
        getCurrentLocation,
    required TResult Function(WeatherGetByLocation value) getWeatherByLocation,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(WeatherGetCurrentLocation value)? getCurrentLocation,
    TResult Function(WeatherGetByLocation value)? getWeatherByLocation,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(WeatherGetCurrentLocation value)? getCurrentLocation,
    TResult Function(WeatherGetByLocation value)? getWeatherByLocation,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements WeatherEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class $WeatherGetCurrentLocationCopyWith<$Res> {
  factory $WeatherGetCurrentLocationCopyWith(WeatherGetCurrentLocation value,
          $Res Function(WeatherGetCurrentLocation) then) =
      _$WeatherGetCurrentLocationCopyWithImpl<$Res>;
}

/// @nodoc
class _$WeatherGetCurrentLocationCopyWithImpl<$Res>
    extends _$WeatherEventCopyWithImpl<$Res>
    implements $WeatherGetCurrentLocationCopyWith<$Res> {
  _$WeatherGetCurrentLocationCopyWithImpl(WeatherGetCurrentLocation _value,
      $Res Function(WeatherGetCurrentLocation) _then)
      : super(_value, (v) => _then(v as WeatherGetCurrentLocation));

  @override
  WeatherGetCurrentLocation get _value =>
      super._value as WeatherGetCurrentLocation;
}

/// @nodoc

class _$WeatherGetCurrentLocation implements WeatherGetCurrentLocation {
  const _$WeatherGetCurrentLocation();

  @override
  String toString() {
    return 'WeatherEvent.getCurrentLocation()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WeatherGetCurrentLocation);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getCurrentLocation,
    required TResult Function(Location location) getWeatherByLocation,
  }) {
    return getCurrentLocation();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getCurrentLocation,
    TResult Function(Location location)? getWeatherByLocation,
  }) {
    return getCurrentLocation?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getCurrentLocation,
    TResult Function(Location location)? getWeatherByLocation,
    required TResult orElse(),
  }) {
    if (getCurrentLocation != null) {
      return getCurrentLocation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(WeatherGetCurrentLocation value)
        getCurrentLocation,
    required TResult Function(WeatherGetByLocation value) getWeatherByLocation,
  }) {
    return getCurrentLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(WeatherGetCurrentLocation value)? getCurrentLocation,
    TResult Function(WeatherGetByLocation value)? getWeatherByLocation,
  }) {
    return getCurrentLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(WeatherGetCurrentLocation value)? getCurrentLocation,
    TResult Function(WeatherGetByLocation value)? getWeatherByLocation,
    required TResult orElse(),
  }) {
    if (getCurrentLocation != null) {
      return getCurrentLocation(this);
    }
    return orElse();
  }
}

abstract class WeatherGetCurrentLocation implements WeatherEvent {
  const factory WeatherGetCurrentLocation() = _$WeatherGetCurrentLocation;
}

/// @nodoc
abstract class $WeatherGetByLocationCopyWith<$Res> {
  factory $WeatherGetByLocationCopyWith(WeatherGetByLocation value,
          $Res Function(WeatherGetByLocation) then) =
      _$WeatherGetByLocationCopyWithImpl<$Res>;
  $Res call({Location location});

  $LocationCopyWith<$Res> get location;
}

/// @nodoc
class _$WeatherGetByLocationCopyWithImpl<$Res>
    extends _$WeatherEventCopyWithImpl<$Res>
    implements $WeatherGetByLocationCopyWith<$Res> {
  _$WeatherGetByLocationCopyWithImpl(
      WeatherGetByLocation _value, $Res Function(WeatherGetByLocation) _then)
      : super(_value, (v) => _then(v as WeatherGetByLocation));

  @override
  WeatherGetByLocation get _value => super._value as WeatherGetByLocation;

  @override
  $Res call({
    Object? location = freezed,
  }) {
    return _then(WeatherGetByLocation(
      location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location,
    ));
  }

  @override
  $LocationCopyWith<$Res> get location {
    return $LocationCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value));
    });
  }
}

/// @nodoc

class _$WeatherGetByLocation implements WeatherGetByLocation {
  const _$WeatherGetByLocation(this.location);

  @override
  final Location location;

  @override
  String toString() {
    return 'WeatherEvent.getWeatherByLocation(location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WeatherGetByLocation &&
            const DeepCollectionEquality().equals(other.location, location));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(location));

  @JsonKey(ignore: true)
  @override
  $WeatherGetByLocationCopyWith<WeatherGetByLocation> get copyWith =>
      _$WeatherGetByLocationCopyWithImpl<WeatherGetByLocation>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getCurrentLocation,
    required TResult Function(Location location) getWeatherByLocation,
  }) {
    return getWeatherByLocation(location);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getCurrentLocation,
    TResult Function(Location location)? getWeatherByLocation,
  }) {
    return getWeatherByLocation?.call(location);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getCurrentLocation,
    TResult Function(Location location)? getWeatherByLocation,
    required TResult orElse(),
  }) {
    if (getWeatherByLocation != null) {
      return getWeatherByLocation(location);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(WeatherGetCurrentLocation value)
        getCurrentLocation,
    required TResult Function(WeatherGetByLocation value) getWeatherByLocation,
  }) {
    return getWeatherByLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(WeatherGetCurrentLocation value)? getCurrentLocation,
    TResult Function(WeatherGetByLocation value)? getWeatherByLocation,
  }) {
    return getWeatherByLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(WeatherGetCurrentLocation value)? getCurrentLocation,
    TResult Function(WeatherGetByLocation value)? getWeatherByLocation,
    required TResult orElse(),
  }) {
    if (getWeatherByLocation != null) {
      return getWeatherByLocation(this);
    }
    return orElse();
  }
}

abstract class WeatherGetByLocation implements WeatherEvent {
  const factory WeatherGetByLocation(Location location) =
      _$WeatherGetByLocation;

  Location get location;
  @JsonKey(ignore: true)
  $WeatherGetByLocationCopyWith<WeatherGetByLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$WeatherStateTearOff {
  const _$WeatherStateTearOff();

  _WeatherState call(
      {required bool isLoading,
      required Option<Either<Failure, Location>> locationOrFailureOption,
      required Option<Either<Failure, List<Weather>>>
          weatherListOrFailureOption,
      required Weather? currentWeather,
      required Location? location}) {
    return _WeatherState(
      isLoading: isLoading,
      locationOrFailureOption: locationOrFailureOption,
      weatherListOrFailureOption: weatherListOrFailureOption,
      currentWeather: currentWeather,
      location: location,
    );
  }
}

/// @nodoc
const $WeatherState = _$WeatherStateTearOff();

/// @nodoc
mixin _$WeatherState {
  bool get isLoading => throw _privateConstructorUsedError;
  Option<Either<Failure, Location>> get locationOrFailureOption =>
      throw _privateConstructorUsedError;
  Option<Either<Failure, List<Weather>>> get weatherListOrFailureOption =>
      throw _privateConstructorUsedError;
  Weather? get currentWeather => throw _privateConstructorUsedError;
  Location? get location => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeatherStateCopyWith<WeatherState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherStateCopyWith<$Res> {
  factory $WeatherStateCopyWith(
          WeatherState value, $Res Function(WeatherState) then) =
      _$WeatherStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      Option<Either<Failure, Location>> locationOrFailureOption,
      Option<Either<Failure, List<Weather>>> weatherListOrFailureOption,
      Weather? currentWeather,
      Location? location});

  $WeatherCopyWith<$Res>? get currentWeather;
  $LocationCopyWith<$Res>? get location;
}

/// @nodoc
class _$WeatherStateCopyWithImpl<$Res> implements $WeatherStateCopyWith<$Res> {
  _$WeatherStateCopyWithImpl(this._value, this._then);

  final WeatherState _value;
  // ignore: unused_field
  final $Res Function(WeatherState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? locationOrFailureOption = freezed,
    Object? weatherListOrFailureOption = freezed,
    Object? currentWeather = freezed,
    Object? location = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      locationOrFailureOption: locationOrFailureOption == freezed
          ? _value.locationOrFailureOption
          : locationOrFailureOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, Location>>,
      weatherListOrFailureOption: weatherListOrFailureOption == freezed
          ? _value.weatherListOrFailureOption
          : weatherListOrFailureOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, List<Weather>>>,
      currentWeather: currentWeather == freezed
          ? _value.currentWeather
          : currentWeather // ignore: cast_nullable_to_non_nullable
              as Weather?,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location?,
    ));
  }

  @override
  $WeatherCopyWith<$Res>? get currentWeather {
    if (_value.currentWeather == null) {
      return null;
    }

    return $WeatherCopyWith<$Res>(_value.currentWeather!, (value) {
      return _then(_value.copyWith(currentWeather: value));
    });
  }

  @override
  $LocationCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $LocationCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value));
    });
  }
}

/// @nodoc
abstract class _$WeatherStateCopyWith<$Res>
    implements $WeatherStateCopyWith<$Res> {
  factory _$WeatherStateCopyWith(
          _WeatherState value, $Res Function(_WeatherState) then) =
      __$WeatherStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      Option<Either<Failure, Location>> locationOrFailureOption,
      Option<Either<Failure, List<Weather>>> weatherListOrFailureOption,
      Weather? currentWeather,
      Location? location});

  @override
  $WeatherCopyWith<$Res>? get currentWeather;
  @override
  $LocationCopyWith<$Res>? get location;
}

/// @nodoc
class __$WeatherStateCopyWithImpl<$Res> extends _$WeatherStateCopyWithImpl<$Res>
    implements _$WeatherStateCopyWith<$Res> {
  __$WeatherStateCopyWithImpl(
      _WeatherState _value, $Res Function(_WeatherState) _then)
      : super(_value, (v) => _then(v as _WeatherState));

  @override
  _WeatherState get _value => super._value as _WeatherState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? locationOrFailureOption = freezed,
    Object? weatherListOrFailureOption = freezed,
    Object? currentWeather = freezed,
    Object? location = freezed,
  }) {
    return _then(_WeatherState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      locationOrFailureOption: locationOrFailureOption == freezed
          ? _value.locationOrFailureOption
          : locationOrFailureOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, Location>>,
      weatherListOrFailureOption: weatherListOrFailureOption == freezed
          ? _value.weatherListOrFailureOption
          : weatherListOrFailureOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, List<Weather>>>,
      currentWeather: currentWeather == freezed
          ? _value.currentWeather
          : currentWeather // ignore: cast_nullable_to_non_nullable
              as Weather?,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location?,
    ));
  }
}

/// @nodoc

class _$_WeatherState implements _WeatherState {
  const _$_WeatherState(
      {required this.isLoading,
      required this.locationOrFailureOption,
      required this.weatherListOrFailureOption,
      required this.currentWeather,
      required this.location});

  @override
  final bool isLoading;
  @override
  final Option<Either<Failure, Location>> locationOrFailureOption;
  @override
  final Option<Either<Failure, List<Weather>>> weatherListOrFailureOption;
  @override
  final Weather? currentWeather;
  @override
  final Location? location;

  @override
  String toString() {
    return 'WeatherState(isLoading: $isLoading, locationOrFailureOption: $locationOrFailureOption, weatherListOrFailureOption: $weatherListOrFailureOption, currentWeather: $currentWeather, location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WeatherState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(
                other.locationOrFailureOption, locationOrFailureOption) &&
            const DeepCollectionEquality().equals(
                other.weatherListOrFailureOption, weatherListOrFailureOption) &&
            const DeepCollectionEquality()
                .equals(other.currentWeather, currentWeather) &&
            const DeepCollectionEquality().equals(other.location, location));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(locationOrFailureOption),
      const DeepCollectionEquality().hash(weatherListOrFailureOption),
      const DeepCollectionEquality().hash(currentWeather),
      const DeepCollectionEquality().hash(location));

  @JsonKey(ignore: true)
  @override
  _$WeatherStateCopyWith<_WeatherState> get copyWith =>
      __$WeatherStateCopyWithImpl<_WeatherState>(this, _$identity);
}

abstract class _WeatherState implements WeatherState {
  const factory _WeatherState(
      {required bool isLoading,
      required Option<Either<Failure, Location>> locationOrFailureOption,
      required Option<Either<Failure, List<Weather>>>
          weatherListOrFailureOption,
      required Weather? currentWeather,
      required Location? location}) = _$_WeatherState;

  @override
  bool get isLoading;
  @override
  Option<Either<Failure, Location>> get locationOrFailureOption;
  @override
  Option<Either<Failure, List<Weather>>> get weatherListOrFailureOption;
  @override
  Weather? get currentWeather;
  @override
  Location? get location;
  @override
  @JsonKey(ignore: true)
  _$WeatherStateCopyWith<_WeatherState> get copyWith =>
      throw _privateConstructorUsedError;
}
