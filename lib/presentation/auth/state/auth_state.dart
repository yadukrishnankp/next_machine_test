import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:next_machine_test/core/network/api_fetch_state.dart';
import 'package:next_machine_test/data/model/login_response.dart';

part 'auth_state.freezed.dart';

@freezed
sealed class AuthState with _$AuthState {
  const factory AuthState({
    @Default('') String phoneNumber,
    @Default('') String otp,
    @Default(ApiFetchState.initial())ApiFetchState<LoginResponse> login,
  }) = _AuthState;
}
