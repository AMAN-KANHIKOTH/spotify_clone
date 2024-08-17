part of 'access_code_bloc.dart';

@freezed
class AccessCodeEvent with _$AccessCodeEvent {
  const factory AccessCodeEvent.refreshCode() = RefreshCode;
}
