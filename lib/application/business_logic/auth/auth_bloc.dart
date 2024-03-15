import 'dart:async';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:bechdu_partner/data/feature/device_informations.dart';
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
    on<AgreePolicy>(agreePolicy);
    on<Log>(log);
    on<LogOut>(logOut);
    on<Reset>(reset);
  }

  FutureOr<void> reset(Reset event, emit) {
    emit(AuthState.initial());
  }

  FutureOr<void> sendOtp(SendOtp event, emit) async {
    if (!state.agreePolicy) {
      return emit(state.copyWith(
          message: 'with out agree to our policy user cant signup',
          agreePolicyError: true));
    }
    emit(AuthState.initial().copyWith(isLoading: true));
    final result =
        await authRepo.sendOtp(phoneNumberModel: event.phoneNumberModel);
    result.fold(
        (l) => emit(state.copyWith(
            message: l.message, hasError: true, isLoading: false)),
        (r) => emit(state.copyWith(
            message: r.message, isLoading: false, otpSend: true)));
  }

  FutureOr<void> agreePolicy(AgreePolicy event, emit) {
    emit(state.copyWith(agreePolicy: !state.agreePolicy, message: null));
  }

  FutureOr<void> log(Log event, emit) async {
    final log = await SharedPref.getLogin();
    final role = await SharedPref.getRole();
    emit(state.copyWith(isLogin: log, role: role));
  }

  FutureOr<void> logOut(LogOut event, emit) async {
    await SharedPref.clearLogin();
  }

  FutureOr<void> verifyOtp(VerifyOtp event, emit) async {
    emit(AuthState.initial().copyWith(isLoading: true));
    final userAgent = await DeviceInformation.getDeviceInformation();
    final result = await authRepo.verifyOtp(
        verifyOtpModel: event.verifyOtpModel, userAgent: userAgent);
    result.fold(
        (l) => emit(state.copyWith(
            isLoading: false,
            otpVerificationError: true,
            message: l.message)), (r) async {
      SharedPref.setPhone(phone: r.phone!);
      SharedPref.saveToken(tokenModel: TokenModel(accessToken: r.token));
      emit(state.copyWith(
          isLoading: false,
          message: r.message,
          isLogin: true,
          role: r.role == 'Partner'));
      print("login response => ${r.toJson()}");
      partner = r.role == 'Partner';
      await SharedPref.setRole(isPartner: r.role == 'Partner');
      await SharedPref.setLogin();
      phoneController.text = '';
      otpController.text = '';
    });
  }
}
