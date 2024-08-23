part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState({
    required bool isLoading,
    required bool isError,
    required List<Map<String, List<PlaylistItem>>> browseAllList,
  }) = _Initial;

  factory SearchState.initialise() {
    return SearchState(
      isLoading: false,
      isError: false,
      browseAllList: [],
    );
  }
}
