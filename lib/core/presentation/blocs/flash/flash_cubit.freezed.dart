// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'flash_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FlashStateTearOff {
  const _$FlashStateTearOff();

  FlashDisappeared disappeared() {
    return const FlashDisappeared();
  }

  FlashAppeared appeared(String message) {
    return FlashAppeared(
      message,
    );
  }
}

/// @nodoc
const $FlashState = _$FlashStateTearOff();

/// @nodoc
mixin _$FlashState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() disappeared,
    required TResult Function(String message) appeared,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? disappeared,
    TResult Function(String message)? appeared,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? disappeared,
    TResult Function(String message)? appeared,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FlashDisappeared value) disappeared,
    required TResult Function(FlashAppeared value) appeared,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FlashDisappeared value)? disappeared,
    TResult Function(FlashAppeared value)? appeared,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FlashDisappeared value)? disappeared,
    TResult Function(FlashAppeared value)? appeared,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlashStateCopyWith<$Res> {
  factory $FlashStateCopyWith(
          FlashState value, $Res Function(FlashState) then) =
      _$FlashStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FlashStateCopyWithImpl<$Res> implements $FlashStateCopyWith<$Res> {
  _$FlashStateCopyWithImpl(this._value, this._then);

  final FlashState _value;
  // ignore: unused_field
  final $Res Function(FlashState) _then;
}

/// @nodoc
abstract class $FlashDisappearedCopyWith<$Res> {
  factory $FlashDisappearedCopyWith(
          FlashDisappeared value, $Res Function(FlashDisappeared) then) =
      _$FlashDisappearedCopyWithImpl<$Res>;
}

/// @nodoc
class _$FlashDisappearedCopyWithImpl<$Res>
    extends _$FlashStateCopyWithImpl<$Res>
    implements $FlashDisappearedCopyWith<$Res> {
  _$FlashDisappearedCopyWithImpl(
      FlashDisappeared _value, $Res Function(FlashDisappeared) _then)
      : super(_value, (v) => _then(v as FlashDisappeared));

  @override
  FlashDisappeared get _value => super._value as FlashDisappeared;
}

/// @nodoc

class _$FlashDisappeared implements FlashDisappeared {
  const _$FlashDisappeared();

  @override
  String toString() {
    return 'FlashState.disappeared()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is FlashDisappeared);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() disappeared,
    required TResult Function(String message) appeared,
  }) {
    return disappeared();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? disappeared,
    TResult Function(String message)? appeared,
  }) {
    return disappeared?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? disappeared,
    TResult Function(String message)? appeared,
    required TResult orElse(),
  }) {
    if (disappeared != null) {
      return disappeared();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FlashDisappeared value) disappeared,
    required TResult Function(FlashAppeared value) appeared,
  }) {
    return disappeared(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FlashDisappeared value)? disappeared,
    TResult Function(FlashAppeared value)? appeared,
  }) {
    return disappeared?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FlashDisappeared value)? disappeared,
    TResult Function(FlashAppeared value)? appeared,
    required TResult orElse(),
  }) {
    if (disappeared != null) {
      return disappeared(this);
    }
    return orElse();
  }
}

abstract class FlashDisappeared implements FlashState {
  const factory FlashDisappeared() = _$FlashDisappeared;
}

/// @nodoc
abstract class $FlashAppearedCopyWith<$Res> {
  factory $FlashAppearedCopyWith(
          FlashAppeared value, $Res Function(FlashAppeared) then) =
      _$FlashAppearedCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$FlashAppearedCopyWithImpl<$Res> extends _$FlashStateCopyWithImpl<$Res>
    implements $FlashAppearedCopyWith<$Res> {
  _$FlashAppearedCopyWithImpl(
      FlashAppeared _value, $Res Function(FlashAppeared) _then)
      : super(_value, (v) => _then(v as FlashAppeared));

  @override
  FlashAppeared get _value => super._value as FlashAppeared;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(FlashAppeared(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FlashAppeared implements FlashAppeared {
  const _$FlashAppeared(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'FlashState.appeared(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FlashAppeared &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $FlashAppearedCopyWith<FlashAppeared> get copyWith =>
      _$FlashAppearedCopyWithImpl<FlashAppeared>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() disappeared,
    required TResult Function(String message) appeared,
  }) {
    return appeared(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? disappeared,
    TResult Function(String message)? appeared,
  }) {
    return appeared?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? disappeared,
    TResult Function(String message)? appeared,
    required TResult orElse(),
  }) {
    if (appeared != null) {
      return appeared(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FlashDisappeared value) disappeared,
    required TResult Function(FlashAppeared value) appeared,
  }) {
    return appeared(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FlashDisappeared value)? disappeared,
    TResult Function(FlashAppeared value)? appeared,
  }) {
    return appeared?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FlashDisappeared value)? disappeared,
    TResult Function(FlashAppeared value)? appeared,
    required TResult orElse(),
  }) {
    if (appeared != null) {
      return appeared(this);
    }
    return orElse();
  }
}

abstract class FlashAppeared implements FlashState {
  const factory FlashAppeared(String message) = _$FlashAppeared;

  String get message;
  @JsonKey(ignore: true)
  $FlashAppearedCopyWith<FlashAppeared> get copyWith =>
      throw _privateConstructorUsedError;
}
