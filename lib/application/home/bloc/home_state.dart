part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required bool isloading,
    required bool isError,
    required List<Artist> artistsList,
  }) = _Initial;

  factory HomeState.initialise() {
    return const HomeState(
      isloading: false,
      isError: false,
      artistsList: [],
    );
  }
}
