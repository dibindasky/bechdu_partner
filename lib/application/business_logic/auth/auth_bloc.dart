import 'dart:async';
import 'package:bechdu_partner/data/secure_storage/secure_storage.dart';
import 'package:bechdu_partner/domain/model/auth/phone_number_model/phone_number_model.dart';
import 'package:bechdu_partner/domain/model/auth/verify_otp_model/verify_otp_model.dart';
import 'package:bechdu_partner/domain/model/token/token_model.dart';
import 'package:bechdu_partner/domain/repository/service/auth_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController otpController = TextEditingController();
  final AuthRepo authRepo;
  AuthBloc(this.authRepo) : super(AuthState.initial()) {
    on<SendOtp>(sendOtp);
    on<VerifyOtp>(verifyOtp);
  }

  FutureOr<void> sendOtp(SendOtp event, emit) async {
    emit(AuthState.initial().copyWith(isLoading: true));
    final result =
        await authRepo.sendOtp(phoneNumberModel: event.phoneNumberModel);
    result.fold(
        (l) => emit(state.copyWith(
            message: l.message, hasError: true, isLoading: false)),
        (r) => emit(state.copyWith(
            message: r.message, isLoading: false, otpSend: true)));
  }

  FutureOr<void> verifyOtp(VerifyOtp event, emit) async {
    emit(AuthState.initial().copyWith(isLoading: true));
    final result =
        await authRepo.verifyOtp(verifyOtpModel: event.verifyOtpModel);
    result.fold(
        (l) => emit(state.copyWith(
            isLoading: false,
            otpVerificationError: true,
            message: l.message)), (r) async {
      emit(state.copyWith(isLoading: false, message: r.message, isLogin: true));
      await SecureStorage.setRole(isPartner: r.role == 'Partner');
      await SecureStorage.saveToken(
          tokenModel: TokenModel(accessToken: r.token));
      await SecureStorage.setPhone(phone: r.phone!);
      await SecureStorage.setLogin();
    });
  }
}
