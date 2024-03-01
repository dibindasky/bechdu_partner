import 'dart:developer';

import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:bechdu_partner/data/service/api_service.dart';
import 'package:bechdu_partner/domain/core/api_endpoints/api_endpoints.dart';
import 'package:bechdu_partner/domain/core/failure/failute.dart';
import 'package:bechdu_partner/domain/model/commen/error_response_model/error_response_model.dart';
import 'package:bechdu_partner/domain/model/pickup_partner/add_pickup_partner_model/add_pickup_partner_model.dart';
import 'package:bechdu_partner/domain/model/pickup_partner/add_pickup_partner_response_model/add_pickup_partner_response_model.dart';
import 'package:bechdu_partner/domain/repository/service/pickup_partner_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class PickupPartnerService implements PickupPartnerRepo {
  final ApiService _apiService;

  PickupPartnerService(this._apiService);

  @override
  Future<Either<Failure, AddPickupPartnerResponseModel>> addPickupPartner(
      {required AddPickupPartnerModel addPickupPartnerModel}) async {
    try {
      final response = await _apiService.post(ApiEndPoints.sendOtp,
          data: addPickupPartnerModel.toJson());
      return Right(AddPickupPartnerResponseModel.fromJson(response.data));
    } on DioException catch (e) {
      log('send otp dio exception => $e');
      return Left(Failure(
          message: ErrorResponseModel.fromJson(e.response?.data).error));
    } catch (e) {
      log('send otp exception => $e');
      return Left(Failure(message: errorMessage));
    }
  }
}
