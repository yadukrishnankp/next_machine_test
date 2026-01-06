import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.freezed.dart';

@freezed
sealed class AuthEvent with _$AuthEvent {
  const factory AuthEvent.setPhoneNumber({
    required String phoneNumber,
  }) = SetPhoneNumber;

  const factory AuthEvent.setOtp({
    required String otp,
  }) = SetOtp;

  const factory AuthEvent.login() = Login;
}
