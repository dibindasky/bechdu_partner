import 'package:bechdu_partner/domain/core/failure/failute.dart';
import 'package:bechdu_partner/domain/model/auth/phone_number_model/phone_number_model.dart';
import 'package:bechdu_partner/domain/model/auth/verify_otp_model/verify_otp_model.dart';
import 'package:bechdu_partner/domain/model/auth/verify_otp_response_model/verify_otp_response_model.dart';
import 'package:bechdu_partner/domain/model/commen/success_response_model/success_response_model.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepo {
  Future<Either<Failure, VerifyOtpResponseModel>> verifyOtp(
      {required VerifyOtpModel verifyOtpModel});
  Future<Either<Failure, SuccessResponseModel>> sendOtp(
      {required PhoneNumberModel phoneNumberModel});
}
