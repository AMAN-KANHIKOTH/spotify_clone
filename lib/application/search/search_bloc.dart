import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:spotify_clone/domain/core/failures/failures.dart';
import 'package:spotify_clone/domain/search/models/playlist_category.dart';
import 'package:spotify_clone/domain/search/models/search_query.dart';
import 'package:spotify_clone/domain/search/search_services.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final SearchServices _searchServices;
  SearchBloc(this._searchServices) : super(SearchState.initialise()) {
    on<_Initialise>((event, emit) async {
      //loading
      emit(state.copyWith(isLoading: true));
      //get browse all
      Either<MainFailures, List<Tuple2<String, List<PlaylistItem>>>>
          getBrowseAll =
          await _searchServices.getBrowseCategories(event.accessCode);
      //send to ui
      emit(getBrowseAll.fold(
        (failure) => state.copyWith(
          isLoading: false,
          isError: true,
        ),
        (success) => state.copyWith(
          isLoading: false,
          isError: false,
          browseAllList: success,
        ),
      ));
    });
    on<_SearchQuery>((event, emit) async {
      //loading
      emit(state.copyWith(isLoading: true));
      //get data
      Either<MainFailures, SearchQuery> getQuery =
          await _searchServices.getSearchQuery(event.accessCode, event.query);
      //send to ui
      emit(getQuery.fold(
          (failure) => state.copyWith(
                isLoading: false,
                isError: false,
              ), (success) {
        //log(success.searchQuerytracks!.items![0].artists![0].toString());
        return state.copyWith(
          isLoading: false,
          isError: false,
          tracks: success.searchQuerytracks!.items ?? [],
          artists: success.artists!.items ?? [],
          albums: success.albums!.items ?? [],
          playlists: success.playlists!.items ?? [],
          // shows: success.shows!.items ?? [],
          episodes: success.episodes!.items ?? [],
          audiobooks:
              success.audiobooks == null ? [] : success.audiobooks!.items!,
        );
      }));
    });
  }
}
