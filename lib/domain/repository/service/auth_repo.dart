import 'package:bechdu_partner/domain/core/failure/failute.dart';
import 'package:bechdu_partner/domain/model/auth/otp_model/otp_model.dart';
import 'package:bechdu_partner/domain/model/auth/phone_number_model/phone_number_model.dart';
import 'package:bechdu_partner/domain/model/auth/verify_otp_model/verify_otp_model.dart';
import 'package:bechdu_partner/domain/model/auth/verify_otp_response_model/verify_otp_response_model.dart';
import 'package:bechdu_partner/domain/model/commen/success_response_model/success_response_model.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepo {
  Future<Either<Failure, VerifyOtpResponseModel>> verifyOtp(
      {required VerifyOtpModel verifyOtpModel, required String userAgent});
  Future<Either<Failure, SuccessResponseModel>> sendOtp(
      {required PhoneNumberModel phoneNumberModel});
  Future<void> logOut({required String phone});
  Future<Either<Failure, SuccessResponseModel>> blockPartner(
      {required OtpModel otpModel, required String phone});
}
