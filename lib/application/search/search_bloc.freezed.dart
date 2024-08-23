// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchEvent {
  String get accessCode => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String accessCode) initialise,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String accessCode)? initialise,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String accessCode)? initialise,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialise value) initialise,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialise value)? initialise,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialise value)? initialise,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchEventCopyWith<SearchEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchEventCopyWith<$Res> {
  factory $SearchEventCopyWith(
          SearchEvent value, $Res Function(SearchEvent) then) =
      _$SearchEventCopyWithImpl<$Res, SearchEvent>;
  @useResult
  $Res call({String accessCode});
}

/// @nodoc
class _$SearchEventCopyWithImpl<$Res, $Val extends SearchEvent>
    implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessCode = null,
  }) {
    return _then(_value.copyWith(
      accessCode: null == accessCode
          ? _value.accessCode
          : accessCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialiseImplCopyWith<$Res>
    implements $SearchEventCopyWith<$Res> {
  factory _$$InitialiseImplCopyWith(
          _$InitialiseImpl value, $Res Function(_$InitialiseImpl) then) =
      __$$InitialiseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String accessCode});
}

/// @nodoc
class __$$InitialiseImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$InitialiseImpl>
    implements _$$InitialiseImplCopyWith<$Res> {
  __$$InitialiseImplCopyWithImpl(
      _$InitialiseImpl _value, $Res Function(_$InitialiseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessCode = null,
  }) {
    return _then(_$InitialiseImpl(
      null == accessCode
          ? _value.accessCode
          : accessCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InitialiseImpl implements _Initialise {
  const _$InitialiseImpl(this.accessCode);

  @override
  final String accessCode;

  @override
  String toString() {
    return 'SearchEvent.initialise(accessCode: $accessCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialiseImpl &&
            (identical(other.accessCode, accessCode) ||
                other.accessCode == accessCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, accessCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialiseImplCopyWith<_$InitialiseImpl> get copyWith =>
      __$$InitialiseImplCopyWithImpl<_$InitialiseImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String accessCode) initialise,
  }) {
    return initialise(accessCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String accessCode)? initialise,
  }) {
    return initialise?.call(accessCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String accessCode)? initialise,
    required TResult orElse(),
  }) {
    if (initialise != null) {
      return initialise(accessCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialise value) initialise,
  }) {
    return initialise(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialise value)? initialise,
  }) {
    return initialise?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialise value)? initialise,
    required TResult orElse(),
  }) {
    if (initialise != null) {
      return initialise(this);
    }
    return orElse();
  }
}

abstract class _Initialise implements SearchEvent {
  const factory _Initialise(final String accessCode) = _$InitialiseImpl;

  @override
  String get accessCode;
  @override
  @JsonKey(ignore: true)
  _$$InitialiseImplCopyWith<_$InitialiseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  List<Map<String, List<PlaylistItem>>> get browseAllList =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchStateCopyWith<SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res, SearchState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      List<Map<String, List<PlaylistItem>>> browseAllList});
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res, $Val extends SearchState>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? browseAllList = null,
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
      browseAllList: null == browseAllList
          ? _value.browseAllList
          : browseAllList // ignore: cast_nullable_to_non_nullable
              as List<Map<String, List<PlaylistItem>>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      List<Map<String, List<PlaylistItem>>> browseAllList});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? browseAllList = null,
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
      browseAllList: null == browseAllList
          ? _value._browseAllList
          : browseAllList // ignore: cast_nullable_to_non_nullable
              as List<Map<String, List<PlaylistItem>>>,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {required this.isLoading,
      required this.isError,
      required final List<Map<String, List<PlaylistItem>>> browseAllList})
      : _browseAllList = browseAllList;

  @override
  final bool isLoading;
  @override
  final bool isError;
  final List<Map<String, List<PlaylistItem>>> _browseAllList;
  @override
  List<Map<String, List<PlaylistItem>>> get browseAllList {
    if (_browseAllList is EqualUnmodifiableListView) return _browseAllList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_browseAllList);
  }

  @override
  String toString() {
    return 'SearchState(isLoading: $isLoading, isError: $isError, browseAllList: $browseAllList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            const DeepCollectionEquality()
                .equals(other._browseAllList, _browseAllList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, isError,
      const DeepCollectionEquality().hash(_browseAllList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements SearchState {
  const factory _Initial(
          {required final bool isLoading,
          required final bool isError,
          required final List<Map<String, List<PlaylistItem>>> browseAllList}) =
      _$InitialImpl;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  List<Map<String, List<PlaylistItem>>> get browseAllList;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
