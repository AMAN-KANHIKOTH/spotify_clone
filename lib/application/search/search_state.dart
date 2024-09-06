part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState({
    required bool isLoading,
    required bool isError,
    required List<Map<String, List<PlaylistItem>>> browseAllList,
    required List<SearchItem> tracks,
    required List<SearchItem> artists,
    required List<SearchItem> albums,
    required List<SearchItem> playlists,
    required List<SearchItem> shows,
    required List<SearchItem> episodes,
    required List<SearchItem> audiobooks,
  }) = _Initial;

  factory SearchState.initialise() {
    return const SearchState(
      isLoading: false,
      isError: false,
      browseAllList: [],
      tracks: [],
      artists: [],
      albums: [],
      playlists: [],
      shows: [],
      episodes: [],
      audiobooks: [],
    );
  }
}
