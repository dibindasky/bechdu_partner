import 'dart:developer';

import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:bechdu_partner/data/service/api_service.dart';
import 'package:bechdu_partner/domain/core/api_endpoints/api_endpoints.dart';
import 'package:bechdu_partner/domain/core/failure/failute.dart';
import 'package:bechdu_partner/domain/model/commen/error_response_model/error_response_model.dart';
import 'package:bechdu_partner/domain/model/requote/get_question_response_model/get_question_response_model.dart';
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
}
