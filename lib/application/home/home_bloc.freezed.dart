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
  String get accessCode => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String accessCode) getArtists,
    required TResult Function(String accessCode) getAlbums,
    required TResult Function(String accessCode) getFakeHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String accessCode)? getArtists,
    TResult? Function(String accessCode)? getAlbums,
    TResult? Function(String accessCode)? getFakeHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String accessCode)? getArtists,
    TResult Function(String accessCode)? getAlbums,
    TResult Function(String accessCode)? getFakeHistory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetArtists value) getArtists,
    required TResult Function(GetAlbums value) getAlbums,
    required TResult Function(GetFakeHistory value) getFakeHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetArtists value)? getArtists,
    TResult? Function(GetAlbums value)? getAlbums,
    TResult? Function(GetFakeHistory value)? getFakeHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetArtists value)? getArtists,
    TResult Function(GetAlbums value)? getAlbums,
    TResult Function(GetFakeHistory value)? getFakeHistory,
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
  $Res call({String accessCode});
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
abstract class _$$GetArtistsImplCopyWith<$Res>
    implements $HomeEventCopyWith<$Res> {
  factory _$$GetArtistsImplCopyWith(
          _$GetArtistsImpl value, $Res Function(_$GetArtistsImpl) then) =
      __$$GetArtistsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String accessCode});
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
    Object? accessCode = null,
  }) {
    return _then(_$GetArtistsImpl(
      accessCode: null == accessCode
          ? _value.accessCode
          : accessCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetArtistsImpl implements GetArtists {
  const _$GetArtistsImpl({required this.accessCode});

  @override
  final String accessCode;

  @override
  String toString() {
    return 'HomeEvent.getArtists(accessCode: $accessCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetArtistsImpl &&
            (identical(other.accessCode, accessCode) ||
                other.accessCode == accessCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, accessCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetArtistsImplCopyWith<_$GetArtistsImpl> get copyWith =>
      __$$GetArtistsImplCopyWithImpl<_$GetArtistsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String accessCode) getArtists,
    required TResult Function(String accessCode) getAlbums,
    required TResult Function(String accessCode) getFakeHistory,
  }) {
    return getArtists(accessCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String accessCode)? getArtists,
    TResult? Function(String accessCode)? getAlbums,
    TResult? Function(String accessCode)? getFakeHistory,
  }) {
    return getArtists?.call(accessCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String accessCode)? getArtists,
    TResult Function(String accessCode)? getAlbums,
    TResult Function(String accessCode)? getFakeHistory,
    required TResult orElse(),
  }) {
    if (getArtists != null) {
      return getArtists(accessCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetArtists value) getArtists,
    required TResult Function(GetAlbums value) getAlbums,
    required TResult Function(GetFakeHistory value) getFakeHistory,
  }) {
    return getArtists(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetArtists value)? getArtists,
    TResult? Function(GetAlbums value)? getAlbums,
    TResult? Function(GetFakeHistory value)? getFakeHistory,
  }) {
    return getArtists?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetArtists value)? getArtists,
    TResult Function(GetAlbums value)? getAlbums,
    TResult Function(GetFakeHistory value)? getFakeHistory,
    required TResult orElse(),
  }) {
    if (getArtists != null) {
      return getArtists(this);
    }
    return orElse();
  }
}

abstract class GetArtists implements HomeEvent {
  const factory GetArtists({required final String accessCode}) =
      _$GetArtistsImpl;

  @override
  String get accessCode;
  @override
  @JsonKey(ignore: true)
  _$$GetArtistsImplCopyWith<_$GetArtistsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetAlbumsImplCopyWith<$Res>
    implements $HomeEventCopyWith<$Res> {
  factory _$$GetAlbumsImplCopyWith(
          _$GetAlbumsImpl value, $Res Function(_$GetAlbumsImpl) then) =
      __$$GetAlbumsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String accessCode});
}

/// @nodoc
class __$$GetAlbumsImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetAlbumsImpl>
    implements _$$GetAlbumsImplCopyWith<$Res> {
  __$$GetAlbumsImplCopyWithImpl(
      _$GetAlbumsImpl _value, $Res Function(_$GetAlbumsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessCode = null,
  }) {
    return _then(_$GetAlbumsImpl(
      accessCode: null == accessCode
          ? _value.accessCode
          : accessCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetAlbumsImpl implements GetAlbums {
  const _$GetAlbumsImpl({required this.accessCode});

  @override
  final String accessCode;

  @override
  String toString() {
    return 'HomeEvent.getAlbums(accessCode: $accessCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAlbumsImpl &&
            (identical(other.accessCode, accessCode) ||
                other.accessCode == accessCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, accessCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAlbumsImplCopyWith<_$GetAlbumsImpl> get copyWith =>
      __$$GetAlbumsImplCopyWithImpl<_$GetAlbumsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String accessCode) getArtists,
    required TResult Function(String accessCode) getAlbums,
    required TResult Function(String accessCode) getFakeHistory,
  }) {
    return getAlbums(accessCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String accessCode)? getArtists,
    TResult? Function(String accessCode)? getAlbums,
    TResult? Function(String accessCode)? getFakeHistory,
  }) {
    return getAlbums?.call(accessCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String accessCode)? getArtists,
    TResult Function(String accessCode)? getAlbums,
    TResult Function(String accessCode)? getFakeHistory,
    required TResult orElse(),
  }) {
    if (getAlbums != null) {
      return getAlbums(accessCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetArtists value) getArtists,
    required TResult Function(GetAlbums value) getAlbums,
    required TResult Function(GetFakeHistory value) getFakeHistory,
  }) {
    return getAlbums(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetArtists value)? getArtists,
    TResult? Function(GetAlbums value)? getAlbums,
    TResult? Function(GetFakeHistory value)? getFakeHistory,
  }) {
    return getAlbums?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetArtists value)? getArtists,
    TResult Function(GetAlbums value)? getAlbums,
    TResult Function(GetFakeHistory value)? getFakeHistory,
    required TResult orElse(),
  }) {
    if (getAlbums != null) {
      return getAlbums(this);
    }
    return orElse();
  }
}

abstract class GetAlbums implements HomeEvent {
  const factory GetAlbums({required final String accessCode}) = _$GetAlbumsImpl;

  @override
  String get accessCode;
  @override
  @JsonKey(ignore: true)
  _$$GetAlbumsImplCopyWith<_$GetAlbumsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetFakeHistoryImplCopyWith<$Res>
    implements $HomeEventCopyWith<$Res> {
  factory _$$GetFakeHistoryImplCopyWith(_$GetFakeHistoryImpl value,
          $Res Function(_$GetFakeHistoryImpl) then) =
      __$$GetFakeHistoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String accessCode});
}

/// @nodoc
class __$$GetFakeHistoryImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetFakeHistoryImpl>
    implements _$$GetFakeHistoryImplCopyWith<$Res> {
  __$$GetFakeHistoryImplCopyWithImpl(
      _$GetFakeHistoryImpl _value, $Res Function(_$GetFakeHistoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessCode = null,
  }) {
    return _then(_$GetFakeHistoryImpl(
      accessCode: null == accessCode
          ? _value.accessCode
          : accessCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetFakeHistoryImpl implements GetFakeHistory {
  const _$GetFakeHistoryImpl({required this.accessCode});

  @override
  final String accessCode;

  @override
  String toString() {
    return 'HomeEvent.getFakeHistory(accessCode: $accessCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetFakeHistoryImpl &&
            (identical(other.accessCode, accessCode) ||
                other.accessCode == accessCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, accessCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetFakeHistoryImplCopyWith<_$GetFakeHistoryImpl> get copyWith =>
      __$$GetFakeHistoryImplCopyWithImpl<_$GetFakeHistoryImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String accessCode) getArtists,
    required TResult Function(String accessCode) getAlbums,
    required TResult Function(String accessCode) getFakeHistory,
  }) {
    return getFakeHistory(accessCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String accessCode)? getArtists,
    TResult? Function(String accessCode)? getAlbums,
    TResult? Function(String accessCode)? getFakeHistory,
  }) {
    return getFakeHistory?.call(accessCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String accessCode)? getArtists,
    TResult Function(String accessCode)? getAlbums,
    TResult Function(String accessCode)? getFakeHistory,
    required TResult orElse(),
  }) {
    if (getFakeHistory != null) {
      return getFakeHistory(accessCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetArtists value) getArtists,
    required TResult Function(GetAlbums value) getAlbums,
    required TResult Function(GetFakeHistory value) getFakeHistory,
  }) {
    return getFakeHistory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetArtists value)? getArtists,
    TResult? Function(GetAlbums value)? getAlbums,
    TResult? Function(GetFakeHistory value)? getFakeHistory,
  }) {
    return getFakeHistory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetArtists value)? getArtists,
    TResult Function(GetAlbums value)? getAlbums,
    TResult Function(GetFakeHistory value)? getFakeHistory,
    required TResult orElse(),
  }) {
    if (getFakeHistory != null) {
      return getFakeHistory(this);
    }
    return orElse();
  }
}

abstract class GetFakeHistory implements HomeEvent {
  const factory GetFakeHistory({required final String accessCode}) =
      _$GetFakeHistoryImpl;

  @override
  String get accessCode;
  @override
  @JsonKey(ignore: true)
  _$$GetFakeHistoryImplCopyWith<_$GetFakeHistoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeState {
  bool get isloading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  List<Artist> get artistsList => throw _privateConstructorUsedError;
  List<AlbumItem> get albumList => throw _privateConstructorUsedError;
  List<FakeAlbum> get fakeHis => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {bool isloading,
      bool isError,
      List<Artist> artistsList,
      List<AlbumItem> albumList,
      List<FakeAlbum> fakeHis});
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
    Object? albumList = null,
    Object? fakeHis = null,
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
      albumList: null == albumList
          ? _value.albumList
          : albumList // ignore: cast_nullable_to_non_nullable
              as List<AlbumItem>,
      fakeHis: null == fakeHis
          ? _value.fakeHis
          : fakeHis // ignore: cast_nullable_to_non_nullable
              as List<FakeAlbum>,
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
  $Res call(
      {bool isloading,
      bool isError,
      List<Artist> artistsList,
      List<AlbumItem> albumList,
      List<FakeAlbum> fakeHis});
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
    Object? albumList = null,
    Object? fakeHis = null,
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
      albumList: null == albumList
          ? _value._albumList
          : albumList // ignore: cast_nullable_to_non_nullable
              as List<AlbumItem>,
      fakeHis: null == fakeHis
          ? _value._fakeHis
          : fakeHis // ignore: cast_nullable_to_non_nullable
              as List<FakeAlbum>,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {required this.isloading,
      required this.isError,
      required final List<Artist> artistsList,
      required final List<AlbumItem> albumList,
      required final List<FakeAlbum> fakeHis})
      : _artistsList = artistsList,
        _albumList = albumList,
        _fakeHis = fakeHis;

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

  final List<AlbumItem> _albumList;
  @override
  List<AlbumItem> get albumList {
    if (_albumList is EqualUnmodifiableListView) return _albumList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_albumList);
  }

  final List<FakeAlbum> _fakeHis;
  @override
  List<FakeAlbum> get fakeHis {
    if (_fakeHis is EqualUnmodifiableListView) return _fakeHis;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_fakeHis);
  }

  @override
  String toString() {
    return 'HomeState(isloading: $isloading, isError: $isError, artistsList: $artistsList, albumList: $albumList, fakeHis: $fakeHis)';
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
                .equals(other._artistsList, _artistsList) &&
            const DeepCollectionEquality()
                .equals(other._albumList, _albumList) &&
            const DeepCollectionEquality().equals(other._fakeHis, _fakeHis));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isloading,
      isError,
      const DeepCollectionEquality().hash(_artistsList),
      const DeepCollectionEquality().hash(_albumList),
      const DeepCollectionEquality().hash(_fakeHis));

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
      required final List<Artist> artistsList,
      required final List<AlbumItem> albumList,
      required final List<FakeAlbum> fakeHis}) = _$InitialImpl;

  @override
  bool get isloading;
  @override
  bool get isError;
  @override
  List<Artist> get artistsList;
  @override
  List<AlbumItem> get albumList;
  @override
  List<FakeAlbum> get fakeHis;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
