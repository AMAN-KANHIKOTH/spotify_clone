import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:spotify_clone/domain/core/failures/failures.dart';
import 'package:spotify_clone/domain/home/home_service.dart';
import 'package:spotify_clone/domain/home/model/album_model.dart';
import 'package:spotify_clone/domain/home/model/artist_model.dart';

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
          await _homeService.getArtists(event.accessCode);
      //send to ui
      emit(getArtists.fold(
        (l) => state.copyWith(
          isloading: false,
          isError: true,
        ),
        (success) => state.copyWith(
            isloading: false,
            isError: false,
            artistsList: success.artists ?? []),
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
  }
}
