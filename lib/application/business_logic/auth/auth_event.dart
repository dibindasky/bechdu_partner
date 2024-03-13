part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.sendOtp(
      {required PhoneNumberModel phoneNumberModel}) = SendOtp;
  const factory AuthEvent.verifyOtp({required VerifyOtpModel verifyOtpModel}) =
      VerifyOtp;
  const factory AuthEvent.agreePolicy() = AgreePolicy;
  const factory AuthEvent.log() = Log;
  const factory AuthEvent.logOut() = LogOut;
  const factory AuthEvent.reset() = Reset;
}
