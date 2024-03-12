import 'package:bechdu_partner/domain/core/failure/failute.dart';
import 'package:bechdu_partner/domain/model/commen/success_response_model/success_response_model.dart';
import 'package:bechdu_partner/domain/model/requote/date_and_time_response_model/date_and_time_response_model.dart';
import 'package:bechdu_partner/domain/model/requote/get_question_response_model/get_question_response_model.dart';
import 'package:bechdu_partner/domain/model/requote/gst_response_model/gst_response_model.dart';
import 'package:bechdu_partner/domain/model/requote/reshedule_model/reshedule_model.dart';
import 'package:dartz/dartz.dart';

abstract class RequoteRepo {
  Future<Either<Failure, GetQuestionResponseModel>> getQuestions(
      {required String category});
  Future<Either<Failure, DateAndTimeResponseModel>> getDateAndTime();
  Future<Either<Failure, SuccessResponseModel>> resheduleOrder(
      {required ResheduleModel resheduleModel,
      required String orderId,
      required String phone});
}
