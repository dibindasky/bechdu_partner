import 'package:bechdu_partner/domain/core/failure/failute.dart';
import 'package:bechdu_partner/domain/model/commen/page_size_query_model/page_size_query_model.dart';
import 'package:bechdu_partner/domain/model/notification/get_notification_response_model/get_notification_response_model.dart';
import 'package:dartz/dartz.dart';

abstract class NotificatonRepo {
  Future<Either<Failure, GetNotificationResponseModel>> getNotifications(
      {required String phone, required PageSizeQueryModel pageSizeQueryModel});
}
