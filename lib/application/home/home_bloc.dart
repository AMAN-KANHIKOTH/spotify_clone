import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:spotify_clone/domain/core/failures/failures.dart';
import 'package:spotify_clone/domain/home/home_service.dart';
import 'package:spotify_clone/domain/home/model/album_model.dart';
import 'package:spotify_clone/domain/home/model/artist_model.dart';
import 'package:spotify_clone/domain/home/model/fake_history.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeService _homeService;
  HomeBloc(this._homeService) : super(HomeState.initialise()) {
    on<GetArtists>((event, emit) async {
      // loading
      emit(state.copyWith(isloading: true));
      //Fetch Artists
      final Either<MainFailures, ArtistModel> getArtists =
          await _homeService.getArtists(
        accessCode: event.accessCode,
        artistIds: event.artistId,
      );
      //send to ui
      emit(getArtists.fold(
        (l) => state.copyWith(
          isloading: false,
          isError: true,
        ),
        (success) => state.copyWith(
          isloading: false,
          isError: false,
          favList: success.artists ?? [],
        ),
      ));
    });

    on<GetAlbums>((event, emit) async {
      //loading
      emit(state.copyWith(isloading: true));
      //Fetch Albums
      final Either<MainFailures, Albums> getAlbums =
          await _homeService.getAlbums(event.accessCode);
      //send to ui
      emit(getAlbums.fold(
        (failure) => state.copyWith(
          isloading: false,
          isError: true,
        ),
        (success) => state.copyWith(
          isloading: false,
          isError: false,
          albumList: success.items ?? [],
        ),
      ));
    });
    on<GetFakeHistory>(
      (event, emit) async {
        //loading
        emit(state.copyWith(isloading: true));
        //fetch data
        final Either<MainFailures, FakeHistory> getFakeHistory =
            await _homeService.getFakeHistory(event.accessCode);
        //send to ui
        emit(getFakeHistory.fold(
          (l) => state.copyWith(
            isloading: false,
            isError: true,
          ),
          (success) => state.copyWith(
            isloading: false,
            isError: false,
            fakeHis: success.albums!,
          ),
        ));
      },
    );
    on<ChangeHomeScreenState>(
      (event, emit) {
        if (event.homeScreenState == HomeScreenState.recentSearches) {
          emit(state.copyWith(
              currentState: event.homeScreenState,
              recentSearch: event.recent!));
        } else if (event.homeScreenState == HomeScreenState.favArtist) {
        } else if (event.homeScreenState == HomeScreenState.album) {
        } else if (event.homeScreenState == HomeScreenState.home) {
          emit(state.copyWith(
            currentState: HomeScreenState.home,
          ));
        }
      },
    );
  }
}
