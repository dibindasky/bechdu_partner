import 'dart:developer';

import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:bechdu_partner/data/service/api_service.dart';
import 'package:bechdu_partner/domain/core/api_endpoints/api_endpoints.dart';
import 'package:bechdu_partner/domain/core/failure/failute.dart';
import 'package:bechdu_partner/domain/model/commen/error_response_model/error_response_model.dart';
import 'package:bechdu_partner/domain/model/commen/page_size_query_model/page_size_query_model.dart';
import 'package:bechdu_partner/domain/model/notification/get_notification_response_model/get_notification_response_model.dart';
import 'package:bechdu_partner/domain/repository/service/notification_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: NotificatonRepo)
@injectable
class NotificationService implements NotificatonRepo {
  final ApiService _apiService;

  NotificationService(this._apiService);

  @override
  Future<Either<Failure, GetNotificationResponseModel>> getNotifications(
      {required String phone,
      required PageSizeQueryModel pageSizeQueryModel}) async {
    try {
      final response = await _apiService.get(
          ApiEndPoints.getNotification.replaceFirst('{phone}', phone),
          queryParameters: pageSizeQueryModel.toJson());
      return Right(GetNotificationResponseModel.fromJson(response.data));
    } on DioException catch (e) {
      try {
        log('getNotifications dio exception => $e');
        log(e.response.toString());
        ErrorResponseModel error =
            ErrorResponseModel.fromJson(e.response?.data);
        return Left(Failure(message: error.error ?? errorMessage));
      } catch (e) {
        return Left(Failure(message: errorMessage));
      }
    } catch (e) {
      log('getNotifications exception => $e');
      return Left(Failure(message: errorMessage));
    }
  }
}
