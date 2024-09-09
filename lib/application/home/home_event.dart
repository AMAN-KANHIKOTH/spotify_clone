part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.getArtists({
    @Default(
        '1mYsTxnqsietFxj1OgoGbG,4YRxDV8wJFPHPTeXepOstw,09UmIX92EUH9hAK4bxvHx6,1wRPtKGflJrBx9BmLsSwlU,0FEJqmeLRzsXj8hgcZaAyB')
    String artistId,
    required String accessCode,
  }) = GetArtists;
  const factory HomeEvent.getAlbums({required String accessCode}) = GetAlbums;
  const factory HomeEvent.getFakeHistory({required String accessCode}) =
      GetFakeHistory;
  const factory HomeEvent.changeHomeScreenState(
      {FakeAlbum? recent,
      required HomeScreenState homeScreenState}) = ChangeHomeScreenState;
}
