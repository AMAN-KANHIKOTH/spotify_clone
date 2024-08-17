import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spotify_clone/domain/core/failures/failures.dart';
import 'package:spotify_clone/infrastructure/access_code/get_access_code.dart';

part 'access_code_event.dart';
part 'access_code_state.dart';
part 'access_code_bloc.freezed.dart';

class AccessCodeBloc extends Bloc<AccessCodeEvent, AccessCodeState> {
  AccessCodeBloc() : super(AccessCodeState.initial()) {
    on<RefreshCode>((event, emit) async {
      //loading
      emit(state.copyWith(isLoading: true));
      //Get Token
      Either<MainFailures, String> getAccessOption = await getAccessCode();
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
