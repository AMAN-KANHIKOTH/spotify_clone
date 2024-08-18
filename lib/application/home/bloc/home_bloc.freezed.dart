// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeEvent {
  String get AccessCode => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String AccessCode) getArtists,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String AccessCode)? getArtists,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String AccessCode)? getArtists,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetArtists value) getArtists,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetArtists value)? getArtists,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetArtists value)? getArtists,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeEventCopyWith<HomeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
  @useResult
  $Res call({String AccessCode});
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? AccessCode = null,
  }) {
    return _then(_value.copyWith(
      AccessCode: null == AccessCode
          ? _value.AccessCode
          : AccessCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetArtistsImplCopyWith<$Res>
    implements $HomeEventCopyWith<$Res> {
  factory _$$GetArtistsImplCopyWith(
          _$GetArtistsImpl value, $Res Function(_$GetArtistsImpl) then) =
      __$$GetArtistsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String AccessCode});
}

/// @nodoc
class __$$GetArtistsImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetArtistsImpl>
    implements _$$GetArtistsImplCopyWith<$Res> {
  __$$GetArtistsImplCopyWithImpl(
      _$GetArtistsImpl _value, $Res Function(_$GetArtistsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? AccessCode = null,
  }) {
    return _then(_$GetArtistsImpl(
      AccessCode: null == AccessCode
          ? _value.AccessCode
          : AccessCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetArtistsImpl implements GetArtists {
  const _$GetArtistsImpl({required this.AccessCode});

  @override
  final String AccessCode;

  @override
  String toString() {
    return 'HomeEvent.getArtists(AccessCode: $AccessCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetArtistsImpl &&
            (identical(other.AccessCode, AccessCode) ||
                other.AccessCode == AccessCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, AccessCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetArtistsImplCopyWith<_$GetArtistsImpl> get copyWith =>
      __$$GetArtistsImplCopyWithImpl<_$GetArtistsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String AccessCode) getArtists,
  }) {
    return getArtists(AccessCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String AccessCode)? getArtists,
  }) {
    return getArtists?.call(AccessCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String AccessCode)? getArtists,
    required TResult orElse(),
  }) {
    if (getArtists != null) {
      return getArtists(AccessCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetArtists value) getArtists,
  }) {
    return getArtists(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetArtists value)? getArtists,
  }) {
    return getArtists?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetArtists value)? getArtists,
    required TResult orElse(),
  }) {
    if (getArtists != null) {
      return getArtists(this);
    }
    return orElse();
  }
}

abstract class GetArtists implements HomeEvent {
  const factory GetArtists({required final String AccessCode}) =
      _$GetArtistsImpl;

  @override
  String get AccessCode;
  @override
  @JsonKey(ignore: true)
  _$$GetArtistsImplCopyWith<_$GetArtistsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeState {
  bool get isloading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  List<Artist> get artistsList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call({bool isloading, bool isError, List<Artist> artistsList});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isloading = null,
    Object? isError = null,
    Object? artistsList = null,
  }) {
    return _then(_value.copyWith(
      isloading: null == isloading
          ? _value.isloading
          : isloading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      artistsList: null == artistsList
          ? _value.artistsList
          : artistsList // ignore: cast_nullable_to_non_nullable
              as List<Artist>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isloading, bool isError, List<Artist> artistsList});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isloading = null,
    Object? isError = null,
    Object? artistsList = null,
  }) {
    return _then(_$InitialImpl(
      isloading: null == isloading
          ? _value.isloading
          : isloading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      artistsList: null == artistsList
          ? _value._artistsList
          : artistsList // ignore: cast_nullable_to_non_nullable
              as List<Artist>,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {required this.isloading,
      required this.isError,
      required final List<Artist> artistsList})
      : _artistsList = artistsList;

  @override
  final bool isloading;
  @override
  final bool isError;
  final List<Artist> _artistsList;
  @override
  List<Artist> get artistsList {
    if (_artistsList is EqualUnmodifiableListView) return _artistsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_artistsList);
  }

  @override
  String toString() {
    return 'HomeState(isloading: $isloading, isError: $isError, artistsList: $artistsList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.isloading, isloading) ||
                other.isloading == isloading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            const DeepCollectionEquality()
                .equals(other._artistsList, _artistsList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isloading, isError,
      const DeepCollectionEquality().hash(_artistsList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements HomeState {
  const factory _Initial(
      {required final bool isloading,
      required final bool isError,
      required final List<Artist> artistsList}) = _$InitialImpl;

  @override
  bool get isloading;
  @override
  bool get isError;
  @override
  List<Artist> get artistsList;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
