import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:spotify_clone/domain/access_code/access_code_services.dart';
import 'package:spotify_clone/domain/core/failures/failures.dart';

part 'access_code_event.dart';
part 'access_code_state.dart';
part 'access_code_bloc.freezed.dart';

@injectable
class AccessCodeBloc extends Bloc<AccessCodeEvent, AccessCodeState> {
  final AccessCodeServices _accessCodeServices;
  AccessCodeBloc(this._accessCodeServices) : super(AccessCodeState.initial()) {
    on<_Initialize>((event, emit) async {
      //loading
      emit(state.copyWith(isLoading: true));
      await Future.delayed(const Duration(seconds: 7));

      //Get Token
      Either<MainFailures, String> getAccessOption =
          await _accessCodeServices.getAccessCode();
      //return token
      emit(getAccessOption.fold(
        (failure) => state.copyWith(
          isLoading: false,
          isError: true,
        ),
        (success) => state.copyWith(
          isLoading: false,
          isError: false,
          accessCode: success,
        ),
      ));
    });
    on<_RefreshCode>((event, emit) async {
      //loading
      emit(state.copyWith(isLoading: true));

      //Get Token
      Either<MainFailures, String> getAccessOption =
          await _accessCodeServices.getAccessCode();
      //return token
      emit(getAccessOption.fold(
        (failure) => state.copyWith(
          isLoading: false,
          isError: true,
        ),
        (success) => state.copyWith(
          isLoading: false,
          isError: false,
          accessCode: success,
        ),
      ));
    });
  }
}
