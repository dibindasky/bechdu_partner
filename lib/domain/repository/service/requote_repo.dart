import 'package:bechdu_partner/domain/core/failure/failute.dart';
import 'package:bechdu_partner/domain/model/requote/get_question_response_model/get_question_response_model.dart';
import 'package:dartz/dartz.dart';

abstract class RequoteRepo {
  Future<Either<Failure, GetQuestionResponseModel>> getQuestions(
      {required String category});
}
