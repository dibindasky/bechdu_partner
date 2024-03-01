part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState(
      {required bool isLoading,
      required bool hasError,
      required bool otpSend,
      required bool otpVerificationError,
      required bool isLogin,
      String? message,
      }) = _Initial;

  factory AuthState.initial() => const AuthState(
      isLoading: false,
      hasError: false,
      otpSend: false,
      otpVerificationError: false,
      isLogin: false,);}
