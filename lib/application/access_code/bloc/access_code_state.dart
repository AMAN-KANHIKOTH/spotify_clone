part of 'access_code_bloc.dart';

@freezed
class AccessCodeState with _$AccessCodeState {
  const factory AccessCodeState({
    required bool isLoading,
    required bool isError,
    required String accessCode,
  }) = _Initial;
  factory AccessCodeState.initial() {
    return const AccessCodeState(
      isLoading: false,
      isError: false,
      accessCode: '',
    );
  }
}
