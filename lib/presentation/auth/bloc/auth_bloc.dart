
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:next_machine_test/core/network/api_fetch_state.dart';
import 'package:next_machine_test/domain/usecases/login_usecase.dart';

import '../event/auth_event.dart';
import '../state/auth_state.dart';



class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final LoginUseCase loginUseCase;
  AuthBloc({required this.loginUseCase}) : super(const AuthState()) {
    on<SetPhoneNumber>(_onSetPhoneNumber);
    on<SetOtp>(_onSetOtp);
    on<Login>(_onLogin);
  }

  void _onSetPhoneNumber(
      SetPhoneNumber event,
      Emitter<AuthState> emit,
      ) {
    emit(state.copyWith(phoneNumber: event.phoneNumber));
  }

  void _onSetOtp(
      SetOtp event,
      Emitter<AuthState> emit,
      ) {
    emit(state.copyWith(otp: event.otp));
  }

  Future<void> _onLogin(
      Login event,
      Emitter<AuthState> emit,
      ) async {
    final phone = state.phoneNumber;
    final otp = state.otp;
    emit(state.copyWith(
      login: ApiFetchState.loading()
    ));
  var data =  {
      "mobile": phone,
    "password": otp
  };
    final result =await  loginUseCase.call(data);
    result.fold((l) {
      emit(state.copyWith(
        login: ApiFetchState.failure(l.message)
      ));
    }, (r) => emit(state.copyWith(
      login: ApiFetchState.success(r)
    )),);
  }
}
