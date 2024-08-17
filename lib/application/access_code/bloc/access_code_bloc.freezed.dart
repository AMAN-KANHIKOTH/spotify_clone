// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'access_code_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AccessCodeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refreshCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? refreshCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refreshCode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RefreshCode value) refreshCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RefreshCode value)? refreshCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RefreshCode value)? refreshCode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccessCodeEventCopyWith<$Res> {
  factory $AccessCodeEventCopyWith(
          AccessCodeEvent value, $Res Function(AccessCodeEvent) then) =
      _$AccessCodeEventCopyWithImpl<$Res, AccessCodeEvent>;
}

/// @nodoc
class _$AccessCodeEventCopyWithImpl<$Res, $Val extends AccessCodeEvent>
    implements $AccessCodeEventCopyWith<$Res> {
  _$AccessCodeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RefreshCodeImplCopyWith<$Res> {
  factory _$$RefreshCodeImplCopyWith(
          _$RefreshCodeImpl value, $Res Function(_$RefreshCodeImpl) then) =
      __$$RefreshCodeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefreshCodeImplCopyWithImpl<$Res>
    extends _$AccessCodeEventCopyWithImpl<$Res, _$RefreshCodeImpl>
    implements _$$RefreshCodeImplCopyWith<$Res> {
  __$$RefreshCodeImplCopyWithImpl(
      _$RefreshCodeImpl _value, $Res Function(_$RefreshCodeImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RefreshCodeImpl implements _RefreshCode {
  const _$RefreshCodeImpl();

  @override
  String toString() {
    return 'AccessCodeEvent.refreshCode()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RefreshCodeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refreshCode,
  }) {
    return refreshCode();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? refreshCode,
  }) {
    return refreshCode?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refreshCode,
    required TResult orElse(),
  }) {
    if (refreshCode != null) {
      return refreshCode();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RefreshCode value) refreshCode,
  }) {
    return refreshCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RefreshCode value)? refreshCode,
  }) {
    return refreshCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RefreshCode value)? refreshCode,
    required TResult orElse(),
  }) {
    if (refreshCode != null) {
      return refreshCode(this);
    }
    return orElse();
  }
}

abstract class _RefreshCode implements AccessCodeEvent {
  const factory _RefreshCode() = _$RefreshCodeImpl;
}

/// @nodoc
mixin _$AccessCodeState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  String get accessCode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AccessCodeStateCopyWith<AccessCodeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccessCodeStateCopyWith<$Res> {
  factory $AccessCodeStateCopyWith(
          AccessCodeState value, $Res Function(AccessCodeState) then) =
      _$AccessCodeStateCopyWithImpl<$Res, AccessCodeState>;
  @useResult
  $Res call({bool isLoading, bool isError, String accessCode});
}

/// @nodoc
class _$AccessCodeStateCopyWithImpl<$Res, $Val extends AccessCodeState>
    implements $AccessCodeStateCopyWith<$Res> {
  _$AccessCodeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? accessCode = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      accessCode: null == accessCode
          ? _value.accessCode
          : accessCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $AccessCodeStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, bool isError, String accessCode});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AccessCodeStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? accessCode = null,
  }) {
    return _then(_$InitialImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      accessCode: null == accessCode
          ? _value.accessCode
          : accessCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {required this.isLoading,
      required this.isError,
      required this.accessCode});

  @override
  final bool isLoading;
  @override
  final bool isError;
  @override
  final String accessCode;

  @override
  String toString() {
    return 'AccessCodeState(isLoading: $isLoading, isError: $isError, accessCode: $accessCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.accessCode, accessCode) ||
                other.accessCode == accessCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, isError, accessCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements AccessCodeState {
  const factory _Initial(
      {required final bool isLoading,
      required final bool isError,
      required final String accessCode}) = _$InitialImpl;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  String get accessCode;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
