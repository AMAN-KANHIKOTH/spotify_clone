part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.getArtists({required String AccessCode}) = GetArtists;
}
