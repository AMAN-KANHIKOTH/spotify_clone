part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.initialise(String accessCode) = _Initialise;
  const factory SearchEvent.searchQuery(String accessCode, String query) =
      _SearchQuery;
}
