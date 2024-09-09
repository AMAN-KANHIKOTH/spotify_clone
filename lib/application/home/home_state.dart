part of 'home_bloc.dart';

enum HomeScreenState {
  home,
  recentSearches,
  favArtist,
  album,
}

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required bool isloading,
    required bool isError,
    required List<Artist> favList,
    required List<AlbumItem> albumList,
    required List<FakeAlbum> fakeHis,
    required HomeScreenState currentState,
    required FakeAlbum recentSearch,
    required List<Artist> recentArtist,
  }) = _Initial;

  factory HomeState.initialise() {
    return HomeState(
      isloading: false,
      isError: false,
      favList: [],
      albumList: [],
      fakeHis: [],
      currentState: HomeScreenState.home,
      recentSearch: FakeAlbum(),
      recentArtist: [],
    );
  }
}
