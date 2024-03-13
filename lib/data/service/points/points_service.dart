import 'dart:developer';

import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:bechdu_partner/data/service/api_service.dart';
import 'package:bechdu_partner/domain/core/api_endpoints/api_endpoints.dart';
import 'package:bechdu_partner/domain/core/failure/failute.dart';
import 'package:bechdu_partner/domain/model/commen/error_response_model/error_response_model.dart';
import 'package:bechdu_partner/domain/model/requote/gst_response_model/gst_response_model.dart';
import 'package:bechdu_partner/domain/model/transcaton/coin_value_model/coin_value_model.dart';
import 'package:bechdu_partner/domain/repository/service/points_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: PointsRepo)
@injectable
class PointsService implements PointsRepo {
  final ApiService _apiService;

  PointsService(this._apiService);

  @override
  Future<Either<Failure, GstResponseModel>> getGstRate() async {
    try {
      final response =
          await _apiService.get(ApiEndPoints.getGstValue, addHeader: false);
      log('getGstRate success data=> ${response.data}');
      return Right(GstResponseModel.fromJson(response.data));
    } on DioException catch (e) {
      try {
        log('getGstRate dio exception => $e');
        log(e.response.toString());
        ErrorResponseModel error =
            ErrorResponseModel.fromJson(e.response?.data);
        return Left(Failure(message: error.error ?? errorMessage));
      } catch (e) {
        return Left(Failure(message: errorMessage));
      }
    } catch (e) {
      log('getGstRate exception => $e');
      return Left(Failure(message: errorMessage));
    }
  }

  @override
  Future<Either<Failure, CoinValueModel>> getCoinRate() async {
    try {
      final response =
          await _apiService.get(ApiEndPoints.getConValue, addHeader: false);
      log('getCoinRate success data=> ${response.data}');
      return Right(CoinValueModel.fromJson(response.data));
    } on DioException catch (e) {
      try {
        log('getCoinRate dio exception => $e');
        log(e.response.toString());
        ErrorResponseModel error =
            ErrorResponseModel.fromJson(e.response?.data);
        return Left(Failure(message: error.error ?? errorMessage));
      } catch (e) {
        return Left(Failure(message: errorMessage));
      }
    } catch (e) {
      log('getCoinRate exception => $e');
      return Left(Failure(message: errorMessage));
    }
  }
}
