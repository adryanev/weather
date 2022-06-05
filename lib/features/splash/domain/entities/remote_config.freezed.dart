// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'remote_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RemoteConfigTearOff {
  const _$RemoteConfigTearOff();

  _RemoteConfig<Key, Value> call<Key, Value>(
      {required Key key, required Value value}) {
    return _RemoteConfig<Key, Value>(
      key: key,
      value: value,
    );
  }
}

/// @nodoc
const $RemoteConfig = _$RemoteConfigTearOff();

/// @nodoc
mixin _$RemoteConfig<Key, Value> {
  Key get key => throw _privateConstructorUsedError;
  Value get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RemoteConfigCopyWith<Key, Value, RemoteConfig<Key, Value>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoteConfigCopyWith<Key, Value, $Res> {
  factory $RemoteConfigCopyWith(RemoteConfig<Key, Value> value,
          $Res Function(RemoteConfig<Key, Value>) then) =
      _$RemoteConfigCopyWithImpl<Key, Value, $Res>;
  $Res call({Key key, Value value});
}

/// @nodoc
class _$RemoteConfigCopyWithImpl<Key, Value, $Res>
    implements $RemoteConfigCopyWith<Key, Value, $Res> {
  _$RemoteConfigCopyWithImpl(this._value, this._then);

  final RemoteConfig<Key, Value> _value;
  // ignore: unused_field
  final $Res Function(RemoteConfig<Key, Value>) _then;

  @override
  $Res call({
    Object? key = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as Key,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as Value,
    ));
  }
}

/// @nodoc
abstract class _$RemoteConfigCopyWith<Key, Value, $Res>
    implements $RemoteConfigCopyWith<Key, Value, $Res> {
  factory _$RemoteConfigCopyWith(_RemoteConfig<Key, Value> value,
          $Res Function(_RemoteConfig<Key, Value>) then) =
      __$RemoteConfigCopyWithImpl<Key, Value, $Res>;
  @override
  $Res call({Key key, Value value});
}

/// @nodoc
class __$RemoteConfigCopyWithImpl<Key, Value, $Res>
    extends _$RemoteConfigCopyWithImpl<Key, Value, $Res>
    implements _$RemoteConfigCopyWith<Key, Value, $Res> {
  __$RemoteConfigCopyWithImpl(_RemoteConfig<Key, Value> _value,
      $Res Function(_RemoteConfig<Key, Value>) _then)
      : super(_value, (v) => _then(v as _RemoteConfig<Key, Value>));

  @override
  _RemoteConfig<Key, Value> get _value =>
      super._value as _RemoteConfig<Key, Value>;

  @override
  $Res call({
    Object? key = freezed,
    Object? value = freezed,
  }) {
    return _then(_RemoteConfig<Key, Value>(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as Key,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as Value,
    ));
  }
}

/// @nodoc

class _$_RemoteConfig<Key, Value> implements _RemoteConfig<Key, Value> {
  const _$_RemoteConfig({required this.key, required this.value});

  @override
  final Key key;
  @override
  final Value value;

  @override
  String toString() {
    return 'RemoteConfig<$Key, $Value>(key: $key, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RemoteConfig<Key, Value> &&
            const DeepCollectionEquality().equals(other.key, key) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(key),
      const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$RemoteConfigCopyWith<Key, Value, _RemoteConfig<Key, Value>> get copyWith =>
      __$RemoteConfigCopyWithImpl<Key, Value, _RemoteConfig<Key, Value>>(
          this, _$identity);
}

abstract class _RemoteConfig<Key, Value> implements RemoteConfig<Key, Value> {
  const factory _RemoteConfig({required Key key, required Value value}) =
      _$_RemoteConfig<Key, Value>;

  @override
  Key get key;
  @override
  Value get value;
  @override
  @JsonKey(ignore: true)
  _$RemoteConfigCopyWith<Key, Value, _RemoteConfig<Key, Value>> get copyWith =>
      throw _privateConstructorUsedError;
}
