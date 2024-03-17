import 'dart:developer';

import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:bechdu_partner/data/service/api_service.dart';
import 'package:bechdu_partner/domain/core/api_endpoints/api_endpoints.dart';
import 'package:bechdu_partner/domain/core/failure/failute.dart';
import 'package:bechdu_partner/domain/model/commen/error_response_model/error_response_model.dart';
import 'package:bechdu_partner/domain/model/commen/success_response_model/success_response_model.dart';
import 'package:bechdu_partner/domain/model/requote/date_and_time_response_model/date_and_time_response_model.dart';
import 'package:bechdu_partner/domain/model/requote/get_question_response_model/get_question_response_model.dart';
import 'package:bechdu_partner/domain/model/requote/price_calculation_model/price_calculation_model.dart';
import 'package:bechdu_partner/domain/model/requote/price_r_esponse_model/price_r_esponse_model.dart';
import 'package:bechdu_partner/domain/model/requote/reshedule_model/reshedule_model.dart';
import 'package:bechdu_partner/domain/repository/service/requote_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: RequoteRepo)
@injectable
class RequoteService implements RequoteRepo {
  final ApiService _apiService;

  RequoteService(this._apiService);

  @override
  Future<Either<Failure, GetQuestionResponseModel>> getQuestions(
      {required String category}) async {
    try {
      final response = await _apiService
          .get(ApiEndPoints.getQuestions.replaceFirst('{category}', category));
      log('getQuestions success data=> ${response.data}');
      return Right(GetQuestionResponseModel.fromJson(response.data));
    } on DioException catch (e) {
      try {
        log('getQuestions dio exception => $e');
        log(e.response.toString());
        ErrorResponseModel error =
            ErrorResponseModel.fromJson(e.response?.data);
        return Left(Failure(message: error.error ?? errorMessage));
      } catch (e) {
        return Left(Failure(message: errorMessage));
      }
    } catch (e) {
      log('getQuestions exception => $e');
      return Left(Failure(message: errorMessage));
    }
  }

  @override
  Future<Either<Failure, DateAndTimeResponseModel>> getDateAndTime() async {
    try {
      final response =
          await _apiService.get(ApiEndPoints.getDateAndTime, addHeader: false);
      log('getDateAndTime success data=> ${response.data}');
      return Right(DateAndTimeResponseModel.fromJson(response.data));
    } on DioException catch (e) {
      try {
        log('getDateAndTime dio exception => $e');
        log(e.response.toString());
        ErrorResponseModel error =
            ErrorResponseModel.fromJson(e.response?.data);
        return Left(Failure(message: error.error ?? errorMessage));
      } catch (e) {
        return Left(Failure(message: errorMessage));
      }
    } catch (e) {
      log('getDateAndTime exception => $e');
      return Left(Failure(message: errorMessage));
    }
  }

  @override
  Future<Either<Failure, SuccessResponseModel>> resheduleOrder(
      {required ResheduleModel resheduleModel,
      required String orderId,
      required String phone}) async {
    try {
      log('resheduleOrder data=> ${resheduleModel.toJson()}');
      log('resheduleOrder data=> ${resheduleModel.pickUpDetails!.toJson()}');
      final response = await _apiService.put(
          ApiEndPoints.resheduleOrder
              .replaceFirst('{orderId}', orderId)
              .replaceFirst('{partnerPhone}', phone),
          data: resheduleModel.toJson());
      log('resheduleOrder success data=> ${response.data}');
      return Right(SuccessResponseModel.fromJson(response.data));
    } on DioException catch (e) {
      try {
        log('resheduleOrder dio exception => $e');
        log(e.response.toString());
        ErrorResponseModel error =
            ErrorResponseModel.fromJson(e.response?.data);
        return Left(Failure(message: error.error ?? errorMessage));
      } catch (e) {
        return Left(Failure(message: errorMessage));
      }
    } catch (e) {
      log('resheduleOrder exception => $e');
      return Left(Failure(message: errorMessage));
    }
  }

  @override
  Future<Either<Failure, PriceResponseModel>> getPrice(
      {required PriceCalculationModel priceCalculationModel}) async {
    try {
      log('getPrice data=> ${priceCalculationModel.toJson()}');
      final response = await _apiService.post(ApiEndPoints.getPrice,
          addHeader: false, data: priceCalculationModel.toJson());
      log('getPrice success data=> ${response.data}');
      return Right(PriceResponseModel.fromJson(response.data));
    } on DioException catch (e) {
      try {
        log('getPrice dio exception => $e');
        log(e.response.toString());
        ErrorResponseModel error =
            ErrorResponseModel.fromJson(e.response?.data);
        return Left(Failure(message: error.error ?? errorMessage));
      } catch (e) {
        return Left(Failure(message: errorMessage));
      }
    } catch (e) {
      log('getPrice exception => $e');
      return Left(Failure(message: errorMessage));
    }
  }
}
