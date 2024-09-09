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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String artistId, String accessCode) getArtists,
    required TResult Function(String accessCode) getAlbums,
    required TResult Function(String accessCode) getFakeHistory,
    required TResult Function(
            FakeAlbum? recent, HomeScreenState homeScreenState)
        changeHomeScreenState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String artistId, String accessCode)? getArtists,
    TResult? Function(String accessCode)? getAlbums,
    TResult? Function(String accessCode)? getFakeHistory,
    TResult? Function(FakeAlbum? recent, HomeScreenState homeScreenState)?
        changeHomeScreenState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String artistId, String accessCode)? getArtists,
    TResult Function(String accessCode)? getAlbums,
    TResult Function(String accessCode)? getFakeHistory,
    TResult Function(FakeAlbum? recent, HomeScreenState homeScreenState)?
        changeHomeScreenState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetArtists value) getArtists,
    required TResult Function(GetAlbums value) getAlbums,
    required TResult Function(GetFakeHistory value) getFakeHistory,
    required TResult Function(ChangeHomeScreenState value)
        changeHomeScreenState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetArtists value)? getArtists,
    TResult? Function(GetAlbums value)? getAlbums,
    TResult? Function(GetFakeHistory value)? getFakeHistory,
    TResult? Function(ChangeHomeScreenState value)? changeHomeScreenState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetArtists value)? getArtists,
    TResult Function(GetAlbums value)? getAlbums,
    TResult Function(GetFakeHistory value)? getFakeHistory,
    TResult Function(ChangeHomeScreenState value)? changeHomeScreenState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetArtistsImplCopyWith<$Res> {
  factory _$$GetArtistsImplCopyWith(
          _$GetArtistsImpl value, $Res Function(_$GetArtistsImpl) then) =
      __$$GetArtistsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String artistId, String accessCode});
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
    Object? artistId = null,
    Object? accessCode = null,
  }) {
    return _then(_$GetArtistsImpl(
      artistId: null == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as String,
      accessCode: null == accessCode
          ? _value.accessCode
          : accessCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetArtistsImpl implements GetArtists {
  const _$GetArtistsImpl(
      {this.artistId =
          '1mYsTxnqsietFxj1OgoGbG,4YRxDV8wJFPHPTeXepOstw,09UmIX92EUH9hAK4bxvHx6,1wRPtKGflJrBx9BmLsSwlU,0FEJqmeLRzsXj8hgcZaAyB',
      required this.accessCode});

  @override
  @JsonKey()
  final String artistId;
  @override
  final String accessCode;

  @override
  String toString() {
    return 'HomeEvent.getArtists(artistId: $artistId, accessCode: $accessCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetArtistsImpl &&
            (identical(other.artistId, artistId) ||
                other.artistId == artistId) &&
            (identical(other.accessCode, accessCode) ||
                other.accessCode == accessCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, artistId, accessCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetArtistsImplCopyWith<_$GetArtistsImpl> get copyWith =>
      __$$GetArtistsImplCopyWithImpl<_$GetArtistsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String artistId, String accessCode) getArtists,
    required TResult Function(String accessCode) getAlbums,
    required TResult Function(String accessCode) getFakeHistory,
    required TResult Function(
            FakeAlbum? recent, HomeScreenState homeScreenState)
        changeHomeScreenState,
  }) {
    return getArtists(artistId, accessCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String artistId, String accessCode)? getArtists,
    TResult? Function(String accessCode)? getAlbums,
    TResult? Function(String accessCode)? getFakeHistory,
    TResult? Function(FakeAlbum? recent, HomeScreenState homeScreenState)?
        changeHomeScreenState,
  }) {
    return getArtists?.call(artistId, accessCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String artistId, String accessCode)? getArtists,
    TResult Function(String accessCode)? getAlbums,
    TResult Function(String accessCode)? getFakeHistory,
    TResult Function(FakeAlbum? recent, HomeScreenState homeScreenState)?
        changeHomeScreenState,
    required TResult orElse(),
  }) {
    if (getArtists != null) {
      return getArtists(artistId, accessCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetArtists value) getArtists,
    required TResult Function(GetAlbums value) getAlbums,
    required TResult Function(GetFakeHistory value) getFakeHistory,
    required TResult Function(ChangeHomeScreenState value)
        changeHomeScreenState,
  }) {
    return getArtists(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetArtists value)? getArtists,
    TResult? Function(GetAlbums value)? getAlbums,
    TResult? Function(GetFakeHistory value)? getFakeHistory,
    TResult? Function(ChangeHomeScreenState value)? changeHomeScreenState,
  }) {
    return getArtists?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetArtists value)? getArtists,
    TResult Function(GetAlbums value)? getAlbums,
    TResult Function(GetFakeHistory value)? getFakeHistory,
    TResult Function(ChangeHomeScreenState value)? changeHomeScreenState,
    required TResult orElse(),
  }) {
    if (getArtists != null) {
      return getArtists(this);
    }
    return orElse();
  }
}

abstract class GetArtists implements HomeEvent {
  const factory GetArtists(
      {final String artistId,
      required final String accessCode}) = _$GetArtistsImpl;

  String get artistId;
  String get accessCode;
  @JsonKey(ignore: true)
  _$$GetArtistsImplCopyWith<_$GetArtistsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetAlbumsImplCopyWith<$Res> {
  factory _$$GetAlbumsImplCopyWith(
          _$GetAlbumsImpl value, $Res Function(_$GetAlbumsImpl) then) =
      __$$GetAlbumsImplCopyWithImpl<$Res>;
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
    required TResult Function(String artistId, String accessCode) getArtists,
    required TResult Function(String accessCode) getAlbums,
    required TResult Function(String accessCode) getFakeHistory,
    required TResult Function(
            FakeAlbum? recent, HomeScreenState homeScreenState)
        changeHomeScreenState,
  }) {
    return getAlbums(accessCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String artistId, String accessCode)? getArtists,
    TResult? Function(String accessCode)? getAlbums,
    TResult? Function(String accessCode)? getFakeHistory,
    TResult? Function(FakeAlbum? recent, HomeScreenState homeScreenState)?
        changeHomeScreenState,
  }) {
    return getAlbums?.call(accessCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String artistId, String accessCode)? getArtists,
    TResult Function(String accessCode)? getAlbums,
    TResult Function(String accessCode)? getFakeHistory,
    TResult Function(FakeAlbum? recent, HomeScreenState homeScreenState)?
        changeHomeScreenState,
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
    required TResult Function(ChangeHomeScreenState value)
        changeHomeScreenState,
  }) {
    return getAlbums(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetArtists value)? getArtists,
    TResult? Function(GetAlbums value)? getAlbums,
    TResult? Function(GetFakeHistory value)? getFakeHistory,
    TResult? Function(ChangeHomeScreenState value)? changeHomeScreenState,
  }) {
    return getAlbums?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetArtists value)? getArtists,
    TResult Function(GetAlbums value)? getAlbums,
    TResult Function(GetFakeHistory value)? getFakeHistory,
    TResult Function(ChangeHomeScreenState value)? changeHomeScreenState,
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

  String get accessCode;
  @JsonKey(ignore: true)
  _$$GetAlbumsImplCopyWith<_$GetAlbumsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetFakeHistoryImplCopyWith<$Res> {
  factory _$$GetFakeHistoryImplCopyWith(_$GetFakeHistoryImpl value,
          $Res Function(_$GetFakeHistoryImpl) then) =
      __$$GetFakeHistoryImplCopyWithImpl<$Res>;
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
    required TResult Function(String artistId, String accessCode) getArtists,
    required TResult Function(String accessCode) getAlbums,
    required TResult Function(String accessCode) getFakeHistory,
    required TResult Function(
            FakeAlbum? recent, HomeScreenState homeScreenState)
        changeHomeScreenState,
  }) {
    return getFakeHistory(accessCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String artistId, String accessCode)? getArtists,
    TResult? Function(String accessCode)? getAlbums,
    TResult? Function(String accessCode)? getFakeHistory,
    TResult? Function(FakeAlbum? recent, HomeScreenState homeScreenState)?
        changeHomeScreenState,
  }) {
    return getFakeHistory?.call(accessCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String artistId, String accessCode)? getArtists,
    TResult Function(String accessCode)? getAlbums,
    TResult Function(String accessCode)? getFakeHistory,
    TResult Function(FakeAlbum? recent, HomeScreenState homeScreenState)?
        changeHomeScreenState,
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
    required TResult Function(ChangeHomeScreenState value)
        changeHomeScreenState,
  }) {
    return getFakeHistory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetArtists value)? getArtists,
    TResult? Function(GetAlbums value)? getAlbums,
    TResult? Function(GetFakeHistory value)? getFakeHistory,
    TResult? Function(ChangeHomeScreenState value)? changeHomeScreenState,
  }) {
    return getFakeHistory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetArtists value)? getArtists,
    TResult Function(GetAlbums value)? getAlbums,
    TResult Function(GetFakeHistory value)? getFakeHistory,
    TResult Function(ChangeHomeScreenState value)? changeHomeScreenState,
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

  String get accessCode;
  @JsonKey(ignore: true)
  _$$GetFakeHistoryImplCopyWith<_$GetFakeHistoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeHomeScreenStateImplCopyWith<$Res> {
  factory _$$ChangeHomeScreenStateImplCopyWith(
          _$ChangeHomeScreenStateImpl value,
          $Res Function(_$ChangeHomeScreenStateImpl) then) =
      __$$ChangeHomeScreenStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FakeAlbum? recent, HomeScreenState homeScreenState});
}

/// @nodoc
class __$$ChangeHomeScreenStateImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$ChangeHomeScreenStateImpl>
    implements _$$ChangeHomeScreenStateImplCopyWith<$Res> {
  __$$ChangeHomeScreenStateImplCopyWithImpl(_$ChangeHomeScreenStateImpl _value,
      $Res Function(_$ChangeHomeScreenStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recent = freezed,
    Object? homeScreenState = null,
  }) {
    return _then(_$ChangeHomeScreenStateImpl(
      recent: freezed == recent
          ? _value.recent
          : recent // ignore: cast_nullable_to_non_nullable
              as FakeAlbum?,
      homeScreenState: null == homeScreenState
          ? _value.homeScreenState
          : homeScreenState // ignore: cast_nullable_to_non_nullable
              as HomeScreenState,
    ));
  }
}

/// @nodoc

class _$ChangeHomeScreenStateImpl implements ChangeHomeScreenState {
  const _$ChangeHomeScreenStateImpl(
      {this.recent, required this.homeScreenState});

  @override
  final FakeAlbum? recent;
  @override
  final HomeScreenState homeScreenState;

  @override
  String toString() {
    return 'HomeEvent.changeHomeScreenState(recent: $recent, homeScreenState: $homeScreenState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeHomeScreenStateImpl &&
            (identical(other.recent, recent) || other.recent == recent) &&
            (identical(other.homeScreenState, homeScreenState) ||
                other.homeScreenState == homeScreenState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, recent, homeScreenState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeHomeScreenStateImplCopyWith<_$ChangeHomeScreenStateImpl>
      get copyWith => __$$ChangeHomeScreenStateImplCopyWithImpl<
          _$ChangeHomeScreenStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String artistId, String accessCode) getArtists,
    required TResult Function(String accessCode) getAlbums,
    required TResult Function(String accessCode) getFakeHistory,
    required TResult Function(
            FakeAlbum? recent, HomeScreenState homeScreenState)
        changeHomeScreenState,
  }) {
    return changeHomeScreenState(recent, homeScreenState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String artistId, String accessCode)? getArtists,
    TResult? Function(String accessCode)? getAlbums,
    TResult? Function(String accessCode)? getFakeHistory,
    TResult? Function(FakeAlbum? recent, HomeScreenState homeScreenState)?
        changeHomeScreenState,
  }) {
    return changeHomeScreenState?.call(recent, homeScreenState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String artistId, String accessCode)? getArtists,
    TResult Function(String accessCode)? getAlbums,
    TResult Function(String accessCode)? getFakeHistory,
    TResult Function(FakeAlbum? recent, HomeScreenState homeScreenState)?
        changeHomeScreenState,
    required TResult orElse(),
  }) {
    if (changeHomeScreenState != null) {
      return changeHomeScreenState(recent, homeScreenState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetArtists value) getArtists,
    required TResult Function(GetAlbums value) getAlbums,
    required TResult Function(GetFakeHistory value) getFakeHistory,
    required TResult Function(ChangeHomeScreenState value)
        changeHomeScreenState,
  }) {
    return changeHomeScreenState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetArtists value)? getArtists,
    TResult? Function(GetAlbums value)? getAlbums,
    TResult? Function(GetFakeHistory value)? getFakeHistory,
    TResult? Function(ChangeHomeScreenState value)? changeHomeScreenState,
  }) {
    return changeHomeScreenState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetArtists value)? getArtists,
    TResult Function(GetAlbums value)? getAlbums,
    TResult Function(GetFakeHistory value)? getFakeHistory,
    TResult Function(ChangeHomeScreenState value)? changeHomeScreenState,
    required TResult orElse(),
  }) {
    if (changeHomeScreenState != null) {
      return changeHomeScreenState(this);
    }
    return orElse();
  }
}

abstract class ChangeHomeScreenState implements HomeEvent {
  const factory ChangeHomeScreenState(
          {final FakeAlbum? recent,
          required final HomeScreenState homeScreenState}) =
      _$ChangeHomeScreenStateImpl;

  FakeAlbum? get recent;
  HomeScreenState get homeScreenState;
  @JsonKey(ignore: true)
  _$$ChangeHomeScreenStateImplCopyWith<_$ChangeHomeScreenStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeState {
  bool get isloading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  List<Artist> get favList => throw _privateConstructorUsedError;
  List<AlbumItem> get albumList => throw _privateConstructorUsedError;
  List<FakeAlbum> get fakeHis => throw _privateConstructorUsedError;
  HomeScreenState get currentState => throw _privateConstructorUsedError;
  FakeAlbum get recentSearch => throw _privateConstructorUsedError;
  List<Artist> get recentArtist => throw _privateConstructorUsedError;

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
      List<Artist> favList,
      List<AlbumItem> albumList,
      List<FakeAlbum> fakeHis,
      HomeScreenState currentState,
      FakeAlbum recentSearch,
      List<Artist> recentArtist});
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
    Object? favList = null,
    Object? albumList = null,
    Object? fakeHis = null,
    Object? currentState = null,
    Object? recentSearch = null,
    Object? recentArtist = null,
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
      favList: null == favList
          ? _value.favList
          : favList // ignore: cast_nullable_to_non_nullable
              as List<Artist>,
      albumList: null == albumList
          ? _value.albumList
          : albumList // ignore: cast_nullable_to_non_nullable
              as List<AlbumItem>,
      fakeHis: null == fakeHis
          ? _value.fakeHis
          : fakeHis // ignore: cast_nullable_to_non_nullable
              as List<FakeAlbum>,
      currentState: null == currentState
          ? _value.currentState
          : currentState // ignore: cast_nullable_to_non_nullable
              as HomeScreenState,
      recentSearch: null == recentSearch
          ? _value.recentSearch
          : recentSearch // ignore: cast_nullable_to_non_nullable
              as FakeAlbum,
      recentArtist: null == recentArtist
          ? _value.recentArtist
          : recentArtist // ignore: cast_nullable_to_non_nullable
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
  $Res call(
      {bool isloading,
      bool isError,
      List<Artist> favList,
      List<AlbumItem> albumList,
      List<FakeAlbum> fakeHis,
      HomeScreenState currentState,
      FakeAlbum recentSearch,
      List<Artist> recentArtist});
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
    Object? favList = null,
    Object? albumList = null,
    Object? fakeHis = null,
    Object? currentState = null,
    Object? recentSearch = null,
    Object? recentArtist = null,
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
      favList: null == favList
          ? _value._favList
          : favList // ignore: cast_nullable_to_non_nullable
              as List<Artist>,
      albumList: null == albumList
          ? _value._albumList
          : albumList // ignore: cast_nullable_to_non_nullable
              as List<AlbumItem>,
      fakeHis: null == fakeHis
          ? _value._fakeHis
          : fakeHis // ignore: cast_nullable_to_non_nullable
              as List<FakeAlbum>,
      currentState: null == currentState
          ? _value.currentState
          : currentState // ignore: cast_nullable_to_non_nullable
              as HomeScreenState,
      recentSearch: null == recentSearch
          ? _value.recentSearch
          : recentSearch // ignore: cast_nullable_to_non_nullable
              as FakeAlbum,
      recentArtist: null == recentArtist
          ? _value._recentArtist
          : recentArtist // ignore: cast_nullable_to_non_nullable
              as List<Artist>,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {required this.isloading,
      required this.isError,
      required final List<Artist> favList,
      required final List<AlbumItem> albumList,
      required final List<FakeAlbum> fakeHis,
      required this.currentState,
      required this.recentSearch,
      required final List<Artist> recentArtist})
      : _favList = favList,
        _albumList = albumList,
        _fakeHis = fakeHis,
        _recentArtist = recentArtist;

  @override
  final bool isloading;
  @override
  final bool isError;
  final List<Artist> _favList;
  @override
  List<Artist> get favList {
    if (_favList is EqualUnmodifiableListView) return _favList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favList);
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
  final HomeScreenState currentState;
  @override
  final FakeAlbum recentSearch;
  final List<Artist> _recentArtist;
  @override
  List<Artist> get recentArtist {
    if (_recentArtist is EqualUnmodifiableListView) return _recentArtist;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recentArtist);
  }

  @override
  String toString() {
    return 'HomeState(isloading: $isloading, isError: $isError, favList: $favList, albumList: $albumList, fakeHis: $fakeHis, currentState: $currentState, recentSearch: $recentSearch, recentArtist: $recentArtist)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.isloading, isloading) ||
                other.isloading == isloading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            const DeepCollectionEquality().equals(other._favList, _favList) &&
            const DeepCollectionEquality()
                .equals(other._albumList, _albumList) &&
            const DeepCollectionEquality().equals(other._fakeHis, _fakeHis) &&
            (identical(other.currentState, currentState) ||
                other.currentState == currentState) &&
            (identical(other.recentSearch, recentSearch) ||
                other.recentSearch == recentSearch) &&
            const DeepCollectionEquality()
                .equals(other._recentArtist, _recentArtist));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isloading,
      isError,
      const DeepCollectionEquality().hash(_favList),
      const DeepCollectionEquality().hash(_albumList),
      const DeepCollectionEquality().hash(_fakeHis),
      currentState,
      recentSearch,
      const DeepCollectionEquality().hash(_recentArtist));

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
      required final List<Artist> favList,
      required final List<AlbumItem> albumList,
      required final List<FakeAlbum> fakeHis,
      required final HomeScreenState currentState,
      required final FakeAlbum recentSearch,
      required final List<Artist> recentArtist}) = _$InitialImpl;

  @override
  bool get isloading;
  @override
  bool get isError;
  @override
  List<Artist> get favList;
  @override
  List<AlbumItem> get albumList;
  @override
  List<FakeAlbum> get fakeHis;
  @override
  HomeScreenState get currentState;
  @override
  FakeAlbum get recentSearch;
  @override
  List<Artist> get recentArtist;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
