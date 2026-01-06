import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_response.freezed.dart';
part 'login_response.g.dart';

@freezed
sealed class LoginResponse with _$LoginResponse {
  const factory LoginResponse({
    required User user,
    required String accessToken,
  }) = _LoginResponse;

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}

@freezed
sealed class User with _$User {
  const factory User({
    @JsonKey(name: '_id') required String id,
    @JsonKey(name: '_name') required String name,
    @JsonKey(name: '_uid') required String uid,
    @JsonKey(name: '_otp') required int otp,
    @JsonKey(name: '_mobileNumber') required String mobileNumber,
    @JsonKey(name: '_otpExpiry') required int otpExpiry,
    @JsonKey(name: '_createdAt') required int createdAt,
    @JsonKey(name: '_checkInStatus') required int checkInStatus,
    @JsonKey(name: '_createdUserId') required String createdUserId,
    @JsonKey(name: '_updatedAt') required int updatedAt,
    @JsonKey(name: '_updatedUserId') required String updatedUserId,
    @JsonKey(name: '_status') required int status,
    @JsonKey(name: '__v') required int v,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
