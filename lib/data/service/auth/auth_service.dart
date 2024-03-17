import 'dart:developer';

import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:bechdu_partner/domain/core/api_endpoints/api_endpoints.dart';
import 'package:bechdu_partner/domain/core/failure/failute.dart';
import 'package:bechdu_partner/domain/model/auth/phone_number_model/phone_number_model.dart';
import 'package:bechdu_partner/domain/model/auth/verify_otp_model/verify_otp_model.dart';
import 'package:bechdu_partner/domain/model/auth/verify_otp_response_model/verify_otp_response_model.dart';
import 'package:bechdu_partner/domain/model/commen/error_response_model/error_response_model.dart';
import 'package:bechdu_partner/domain/model/commen/success_response_model/success_response_model.dart';
import 'package:bechdu_partner/domain/repository/service/auth_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AuthRepo)
@injectable
class AuthService implements AuthRepo {
  final Dio _dio = Dio(BaseOptions(baseUrl: ApiEndPoints.baseUrl));
  @override
  Future<Either<Failure, SuccessResponseModel>> sendOtp(
      {required PhoneNumberModel phoneNumberModel}) async {
    try {
      log('send otp dio exception => ${phoneNumberModel.toJson()}');
      final response = await _dio.post(ApiEndPoints.sendOtp,
          data: phoneNumberModel.toJson());
      return Right(SuccessResponseModel.fromJson(response.data));
    } on DioException catch (e) {
      log('send otp dio exception => $e');
      return Left(Failure(
          message: ErrorResponseModel.fromJson(e.response?.data).error));
    } catch (e) {
      log('send otp exception => $e');
      return Left(Failure(message: errorMessage));
    }
  }

  @override
  Future<Either<Failure, VerifyOtpResponseModel>> verifyOtp(
      {required VerifyOtpModel verifyOtpModel,
      required String userAgent}) async {
    try {
      log('verify otp  => ${verifyOtpModel.toJson()}');
      // _dio.options.headers['user-agent']='PocoM2Pro';
      _dio.options.headers.addAll(
          {'user-agent': userAgent, 'content-Type': 'application/json'});
      log(_dio.options.headers.toString());
      final response = await _dio.post(ApiEndPoints.verifyOtp,
          data: verifyOtpModel.toJson());
      return Right(VerifyOtpResponseModel.fromJson(response.data));
    } on DioException catch (e) {
      log('verify otp dio exception => ${e.response}');
      return Left(Failure(
          message: ErrorResponseModel.fromJson(e.response?.data).error));
    } catch (e) {
      log('verify otp exception => $e');
      return Left(Failure(message: errorMessage));
    }
  }
}
