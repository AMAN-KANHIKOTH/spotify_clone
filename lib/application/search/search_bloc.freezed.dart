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
    required TResult Function(String accessCode, String query) searchQuery,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String accessCode)? initialise,
    TResult? Function(String accessCode, String query)? searchQuery,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String accessCode)? initialise,
    TResult Function(String accessCode, String query)? searchQuery,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialise value) initialise,
    required TResult Function(_SearchQuery value) searchQuery,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialise value)? initialise,
    TResult? Function(_SearchQuery value)? searchQuery,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialise value)? initialise,
    TResult Function(_SearchQuery value)? searchQuery,
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
    required TResult Function(String accessCode, String query) searchQuery,
  }) {
    return initialise(accessCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String accessCode)? initialise,
    TResult? Function(String accessCode, String query)? searchQuery,
  }) {
    return initialise?.call(accessCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String accessCode)? initialise,
    TResult Function(String accessCode, String query)? searchQuery,
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
    required TResult Function(_SearchQuery value) searchQuery,
  }) {
    return initialise(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialise value)? initialise,
    TResult? Function(_SearchQuery value)? searchQuery,
  }) {
    return initialise?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialise value)? initialise,
    TResult Function(_SearchQuery value)? searchQuery,
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
abstract class _$$SearchQueryImplCopyWith<$Res>
    implements $SearchEventCopyWith<$Res> {
  factory _$$SearchQueryImplCopyWith(
          _$SearchQueryImpl value, $Res Function(_$SearchQueryImpl) then) =
      __$$SearchQueryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String accessCode, String query});
}

/// @nodoc
class __$$SearchQueryImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$SearchQueryImpl>
    implements _$$SearchQueryImplCopyWith<$Res> {
  __$$SearchQueryImplCopyWithImpl(
      _$SearchQueryImpl _value, $Res Function(_$SearchQueryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessCode = null,
    Object? query = null,
  }) {
    return _then(_$SearchQueryImpl(
      null == accessCode
          ? _value.accessCode
          : accessCode // ignore: cast_nullable_to_non_nullable
              as String,
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchQueryImpl implements _SearchQuery {
  const _$SearchQueryImpl(this.accessCode, this.query);

  @override
  final String accessCode;
  @override
  final String query;

  @override
  String toString() {
    return 'SearchEvent.searchQuery(accessCode: $accessCode, query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchQueryImpl &&
            (identical(other.accessCode, accessCode) ||
                other.accessCode == accessCode) &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, accessCode, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchQueryImplCopyWith<_$SearchQueryImpl> get copyWith =>
      __$$SearchQueryImplCopyWithImpl<_$SearchQueryImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String accessCode) initialise,
    required TResult Function(String accessCode, String query) searchQuery,
  }) {
    return searchQuery(accessCode, query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String accessCode)? initialise,
    TResult? Function(String accessCode, String query)? searchQuery,
  }) {
    return searchQuery?.call(accessCode, query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String accessCode)? initialise,
    TResult Function(String accessCode, String query)? searchQuery,
    required TResult orElse(),
  }) {
    if (searchQuery != null) {
      return searchQuery(accessCode, query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialise value) initialise,
    required TResult Function(_SearchQuery value) searchQuery,
  }) {
    return searchQuery(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialise value)? initialise,
    TResult? Function(_SearchQuery value)? searchQuery,
  }) {
    return searchQuery?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialise value)? initialise,
    TResult Function(_SearchQuery value)? searchQuery,
    required TResult orElse(),
  }) {
    if (searchQuery != null) {
      return searchQuery(this);
    }
    return orElse();
  }
}

abstract class _SearchQuery implements SearchEvent {
  const factory _SearchQuery(final String accessCode, final String query) =
      _$SearchQueryImpl;

  @override
  String get accessCode;
  String get query;
  @override
  @JsonKey(ignore: true)
  _$$SearchQueryImplCopyWith<_$SearchQueryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  List<Tuple2<String, List<PlaylistItem>>> get browseAllList =>
      throw _privateConstructorUsedError;
  List<SearchItem> get tracks => throw _privateConstructorUsedError;
  List<SearchItem> get artists => throw _privateConstructorUsedError;
  List<SearchItem> get albums => throw _privateConstructorUsedError;
  List<SearchItem> get playlists => throw _privateConstructorUsedError;
  List<SearchItem> get shows => throw _privateConstructorUsedError;
  List<SearchItem> get episodes => throw _privateConstructorUsedError;
  List<SearchItem> get audiobooks => throw _privateConstructorUsedError;

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
      List<Tuple2<String, List<PlaylistItem>>> browseAllList,
      List<SearchItem> tracks,
      List<SearchItem> artists,
      List<SearchItem> albums,
      List<SearchItem> playlists,
      List<SearchItem> shows,
      List<SearchItem> episodes,
      List<SearchItem> audiobooks});
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
    Object? tracks = null,
    Object? artists = null,
    Object? albums = null,
    Object? playlists = null,
    Object? shows = null,
    Object? episodes = null,
    Object? audiobooks = null,
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
              as List<Tuple2<String, List<PlaylistItem>>>,
      tracks: null == tracks
          ? _value.tracks
          : tracks // ignore: cast_nullable_to_non_nullable
              as List<SearchItem>,
      artists: null == artists
          ? _value.artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<SearchItem>,
      albums: null == albums
          ? _value.albums
          : albums // ignore: cast_nullable_to_non_nullable
              as List<SearchItem>,
      playlists: null == playlists
          ? _value.playlists
          : playlists // ignore: cast_nullable_to_non_nullable
              as List<SearchItem>,
      shows: null == shows
          ? _value.shows
          : shows // ignore: cast_nullable_to_non_nullable
              as List<SearchItem>,
      episodes: null == episodes
          ? _value.episodes
          : episodes // ignore: cast_nullable_to_non_nullable
              as List<SearchItem>,
      audiobooks: null == audiobooks
          ? _value.audiobooks
          : audiobooks // ignore: cast_nullable_to_non_nullable
              as List<SearchItem>,
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
      List<Tuple2<String, List<PlaylistItem>>> browseAllList,
      List<SearchItem> tracks,
      List<SearchItem> artists,
      List<SearchItem> albums,
      List<SearchItem> playlists,
      List<SearchItem> shows,
      List<SearchItem> episodes,
      List<SearchItem> audiobooks});
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
    Object? tracks = null,
    Object? artists = null,
    Object? albums = null,
    Object? playlists = null,
    Object? shows = null,
    Object? episodes = null,
    Object? audiobooks = null,
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
              as List<Tuple2<String, List<PlaylistItem>>>,
      tracks: null == tracks
          ? _value._tracks
          : tracks // ignore: cast_nullable_to_non_nullable
              as List<SearchItem>,
      artists: null == artists
          ? _value._artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<SearchItem>,
      albums: null == albums
          ? _value._albums
          : albums // ignore: cast_nullable_to_non_nullable
              as List<SearchItem>,
      playlists: null == playlists
          ? _value._playlists
          : playlists // ignore: cast_nullable_to_non_nullable
              as List<SearchItem>,
      shows: null == shows
          ? _value._shows
          : shows // ignore: cast_nullable_to_non_nullable
              as List<SearchItem>,
      episodes: null == episodes
          ? _value._episodes
          : episodes // ignore: cast_nullable_to_non_nullable
              as List<SearchItem>,
      audiobooks: null == audiobooks
          ? _value._audiobooks
          : audiobooks // ignore: cast_nullable_to_non_nullable
              as List<SearchItem>,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {required this.isLoading,
      required this.isError,
      required final List<Tuple2<String, List<PlaylistItem>>> browseAllList,
      required final List<SearchItem> tracks,
      required final List<SearchItem> artists,
      required final List<SearchItem> albums,
      required final List<SearchItem> playlists,
      required final List<SearchItem> shows,
      required final List<SearchItem> episodes,
      required final List<SearchItem> audiobooks})
      : _browseAllList = browseAllList,
        _tracks = tracks,
        _artists = artists,
        _albums = albums,
        _playlists = playlists,
        _shows = shows,
        _episodes = episodes,
        _audiobooks = audiobooks;

  @override
  final bool isLoading;
  @override
  final bool isError;
  final List<Tuple2<String, List<PlaylistItem>>> _browseAllList;
  @override
  List<Tuple2<String, List<PlaylistItem>>> get browseAllList {
    if (_browseAllList is EqualUnmodifiableListView) return _browseAllList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_browseAllList);
  }

  final List<SearchItem> _tracks;
  @override
  List<SearchItem> get tracks {
    if (_tracks is EqualUnmodifiableListView) return _tracks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tracks);
  }

  final List<SearchItem> _artists;
  @override
  List<SearchItem> get artists {
    if (_artists is EqualUnmodifiableListView) return _artists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_artists);
  }

  final List<SearchItem> _albums;
  @override
  List<SearchItem> get albums {
    if (_albums is EqualUnmodifiableListView) return _albums;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_albums);
  }

  final List<SearchItem> _playlists;
  @override
  List<SearchItem> get playlists {
    if (_playlists is EqualUnmodifiableListView) return _playlists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_playlists);
  }

  final List<SearchItem> _shows;
  @override
  List<SearchItem> get shows {
    if (_shows is EqualUnmodifiableListView) return _shows;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_shows);
  }

  final List<SearchItem> _episodes;
  @override
  List<SearchItem> get episodes {
    if (_episodes is EqualUnmodifiableListView) return _episodes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_episodes);
  }

  final List<SearchItem> _audiobooks;
  @override
  List<SearchItem> get audiobooks {
    if (_audiobooks is EqualUnmodifiableListView) return _audiobooks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_audiobooks);
  }

  @override
  String toString() {
    return 'SearchState(isLoading: $isLoading, isError: $isError, browseAllList: $browseAllList, tracks: $tracks, artists: $artists, albums: $albums, playlists: $playlists, shows: $shows, episodes: $episodes, audiobooks: $audiobooks)';
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
                .equals(other._browseAllList, _browseAllList) &&
            const DeepCollectionEquality().equals(other._tracks, _tracks) &&
            const DeepCollectionEquality().equals(other._artists, _artists) &&
            const DeepCollectionEquality().equals(other._albums, _albums) &&
            const DeepCollectionEquality()
                .equals(other._playlists, _playlists) &&
            const DeepCollectionEquality().equals(other._shows, _shows) &&
            const DeepCollectionEquality().equals(other._episodes, _episodes) &&
            const DeepCollectionEquality()
                .equals(other._audiobooks, _audiobooks));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      isError,
      const DeepCollectionEquality().hash(_browseAllList),
      const DeepCollectionEquality().hash(_tracks),
      const DeepCollectionEquality().hash(_artists),
      const DeepCollectionEquality().hash(_albums),
      const DeepCollectionEquality().hash(_playlists),
      const DeepCollectionEquality().hash(_shows),
      const DeepCollectionEquality().hash(_episodes),
      const DeepCollectionEquality().hash(_audiobooks));

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
      required final List<Tuple2<String, List<PlaylistItem>>> browseAllList,
      required final List<SearchItem> tracks,
      required final List<SearchItem> artists,
      required final List<SearchItem> albums,
      required final List<SearchItem> playlists,
      required final List<SearchItem> shows,
      required final List<SearchItem> episodes,
      required final List<SearchItem> audiobooks}) = _$InitialImpl;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  List<Tuple2<String, List<PlaylistItem>>> get browseAllList;
  @override
  List<SearchItem> get tracks;
  @override
  List<SearchItem> get artists;
  @override
  List<SearchItem> get albums;
  @override
  List<SearchItem> get playlists;
  @override
  List<SearchItem> get shows;
  @override
  List<SearchItem> get episodes;
  @override
  List<SearchItem> get audiobooks;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
