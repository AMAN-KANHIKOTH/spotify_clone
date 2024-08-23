import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:spotify_clone/domain/core/failures/failures.dart';
import 'package:spotify_clone/domain/search/models/browse_categories.dart';
import 'package:spotify_clone/domain/search/models/playlist_category.dart';
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
      Either<MainFailures, List<Map<String, List<PlaylistItem>>>> getBrowseAll =
          await _searchServices.getBrowseCategories(event.accessCode);
      //send to ui
      emit(getBrowseAll.fold(
        (failure) => state.copyWith(
          isLoading: false,
          isError: false,
        ),
        (success) => state.copyWith(
          isLoading: false,
          isError: false,
          browseAllList: success,
        ),
      ));
    });
  }
}
