import 'dart:developer';

import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:bechdu_partner/data/service/api_service.dart';
import 'package:bechdu_partner/domain/core/api_endpoints/api_endpoints.dart';
import 'package:bechdu_partner/domain/core/failure/failute.dart';
import 'package:bechdu_partner/domain/model/commen/error_response_model/error_response_model.dart';
import 'package:bechdu_partner/domain/model/commen/page_size_query_model/page_size_query_model.dart';
import 'package:bechdu_partner/domain/model/transcaton/get_credited_transcations_response_model/get_credited_transcations_response_model.dart';
import 'package:bechdu_partner/domain/repository/service/transcations_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: TranscationsRepo)
@injectable
class TranscationService implements TranscationsRepo {
  final ApiService _apiService;

  TranscationService(this._apiService);
  @override
  Future<Either<Failure, GetCreditedTranscationsResponseModel>>
      getCreditedTranscations(
          {required PageSizeQueryModel pageSizeQueryModel,
          required String phone}) async {
    try {
      final response = await _apiService.get(
          ApiEndPoints.getCreditedTranscation
              .replaceFirst('{partnerPhone}', phone),
          queryParameters: pageSizeQueryModel.toJson(),
          addHeader: false);
      log('getCreditedTranscations success data=> ${response.data}');
      return Right(
          GetCreditedTranscationsResponseModel.fromJson(response.data));
    } on DioException catch (e) {
      try {
        log('getCreditedTranscations dio exception => $e');
        log(e.response.toString());
        ErrorResponseModel error =
            ErrorResponseModel.fromJson(e.response?.data);
        return Left(Failure(message: error.error ?? errorMessage));
      } catch (e) {
        return Left(Failure(message: errorMessage));
      }
    } catch (e) {
      log('getCreditedTranscations exception => $e');
      return Left(Failure(message: errorMessage));
    }
  }

  @override
  Future<Either<Failure, GetCreditedTranscationsResponseModel>>
      getDebitedTranscations(
          {required PageSizeQueryModel pageSizeQueryModel,
          required String phone}) async {
    try {
      final response = await _apiService.get(
          ApiEndPoints.getDebitedTranscation
              .replaceFirst('{partnerPhone}', phone),
          queryParameters: pageSizeQueryModel.toJson(),
          addHeader: false);
      log('getDebitedTranscations success data=> ${response.data}');
      return Right(
          GetCreditedTranscationsResponseModel.fromJson(response.data));
    } on DioException catch (e) {
      try {
        log('getDebitedTranscations dio exception => $e');
        log(e.response.toString());
        ErrorResponseModel error =
            ErrorResponseModel.fromJson(e.response?.data);
        return Left(Failure(message: error.error ?? errorMessage));
      } catch (e) {
        return Left(Failure(message: errorMessage));
      }
    } catch (e) {
      log('getDebitedTranscations exception => $e');
      return Left(Failure(message: errorMessage));
    }
  }
}
