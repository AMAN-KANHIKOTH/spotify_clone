part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.getArtists({required String accessCode}) = GetArtists;
  const factory HomeEvent.getAlbums({required String accessCode}) = GetAlbums;
  const factory HomeEvent.getFakeHistory({required String accessCode}) =
      GetFakeHistory;
}
