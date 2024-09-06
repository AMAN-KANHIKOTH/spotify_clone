part of 'access_code_bloc.dart';

@freezed
class AccessCodeEvent with _$AccessCodeEvent {
  const factory AccessCodeEvent.initialize() = _Initialize;
  const factory AccessCodeEvent.refreshCode() = _RefreshCode;
}
