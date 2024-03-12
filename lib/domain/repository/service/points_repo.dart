import 'package:bechdu_partner/domain/core/failure/failute.dart';
import 'package:bechdu_partner/domain/model/requote/gst_response_model/gst_response_model.dart';
import 'package:dartz/dartz.dart';

abstract class PointsRepo {
  Future<Either<Failure, GstResponseModel>> getGstRate();
}
