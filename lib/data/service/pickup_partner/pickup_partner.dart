import 'dart:developer';

import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:bechdu_partner/data/service/api_service.dart';
import 'package:bechdu_partner/domain/core/api_endpoints/api_endpoints.dart';
import 'package:bechdu_partner/domain/core/failure/failute.dart';
import 'package:bechdu_partner/domain/model/commen/error_response_model/error_response_model.dart';
import 'package:bechdu_partner/domain/model/commen/success_response_model/success_response_model.dart';
import 'package:bechdu_partner/domain/model/partner_profile/partner_profile.dart';
import 'package:bechdu_partner/domain/model/pickup_partner/add_pickup_partner_model/add_pickup_partner_model.dart';
import 'package:bechdu_partner/domain/model/pickup_partner/get_pickup_partner_response_model/get_pickup_partner_response_model.dart';
import 'package:bechdu_partner/domain/repository/service/pickup_partner_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: PickupPartnerRepo)
@injectable
class PickupPartnerService implements PickupPartnerRepo {
  final ApiService _apiService;

  PickupPartnerService(this._apiService);

  @override
  Future<Either<Failure, SuccessResponseModel>> addPickupPartner(
      {required AddPickupPartnerModel addPickupPartnerModel,
      required String phone}) async {
    try {
      final response = await _apiService.post(
          ApiEndPoints.addPickupPartner.replaceFirst('{phone}', phone),
          data: addPickupPartnerModel.toJson());
      return Right(SuccessResponseModel.fromJson(response.data));
    } on DioException catch (e) {
      log('send otp dio exception => $e');
      ErrorResponseModel error = ErrorResponseModel.fromJson(e.response?.data);
      return Left(Failure(message: error.error ?? errorMessage));
    } catch (e) {
      log('send otp exception => $e');
      return Left(Failure(message: errorMessage));
    }
  }

  @override
  Future<Either<Failure, GetPickupPartnerResponseModel>> getPickupPartner(
      {required String phone}) async {
    try {
      final response = await _apiService
          .get(ApiEndPoints.getPickupPartner.replaceFirst('{phone}', phone));
      return Right(GetPickupPartnerResponseModel.fromJson(response.data));
    } on DioException catch (e) {
      try {
        log('getPickupPartner dio exception => $e');
        log(e.response.toString());
        ErrorResponseModel error =
            ErrorResponseModel.fromJson(e.response?.data);
        return Left(Failure(message: error.error ?? errorMessage));
      } catch (e) {
        return Left(Failure(message: errorMessage));
      }
    } catch (e) {
      log('getPickupPartner exception => $e');
      return Left(Failure(message: errorMessage));
    }
  }

  @override
  Future<Either<Failure, SuccessResponseModel>> blockPickupPartner(
      {required String pickupPartnerId, required String phone}) async {
    try {
      final response = await _apiService.put(ApiEndPoints.blockPickupPartner
          .replaceFirst('{partnerPhone}', phone)
          .replaceFirst('{pickUpGuyId}', pickupPartnerId));
      return Right(SuccessResponseModel.fromJson(response.data));
    } on DioException catch (e) {
      try {
        log('blockPickupPartner dio exception => $e');
        log(e.response.toString());
        ErrorResponseModel error =
            ErrorResponseModel.fromJson(e.response?.data);
        return Left(Failure(message: error.error ?? errorMessage));
      } catch (e) {
        return Left(Failure(message: errorMessage));
      }
    } catch (e) {
      log('blockPickupPartner exception => $e');
      return Left(Failure(message: errorMessage));
    }
  }

  @override
  Future<Either<Failure, SuccessResponseModel>> unBlockPickupPartner(
      {required String pickupPartnerId, required String phone}) async {
    try {
      final response = await _apiService.put(ApiEndPoints.unBlockPickupPartner
          .replaceFirst('{partnerPhone}', phone)
          .replaceFirst('{pickUpGuyId}', pickupPartnerId));
      return Right(SuccessResponseModel.fromJson(response.data));
    } on DioException catch (e) {
      try {
        log('unBlockPickupPartner dio exception => $e');
        log(e.response.toString());
        ErrorResponseModel error =
            ErrorResponseModel.fromJson(e.response?.data);
        return Left(Failure(message: error.error ?? errorMessage));
      } catch (e) {
        return Left(Failure(message: errorMessage));
      }
    } catch (e) {
      log('unBlockPickupPartner exception => $e');
      return Left(Failure(message: errorMessage));
    }
  }

  @override
  Future<Either<Failure, PartnerProfile>> getPartnerProfile(
      {required String phone}) async {
    try {
      final response = await _apiService.get(
          ApiEndPoints.getParnerProfile.replaceFirst('{partnerPhone}', phone));
      return Right(PartnerProfile.fromJson(response.data));
    } on DioException catch (e) {
      try {
        log('getPartnerProfile dio exception => $e');
        log(e.response.toString());
        ErrorResponseModel error =
            ErrorResponseModel.fromJson(e.response?.data);
        return Left(Failure(message: error.error ?? errorMessage));
      } catch (e) {
        return Left(Failure(message: errorMessage));
      }
    } catch (e) {
      log('getPartnerProfile exception => $e');
      return Left(Failure(message: errorMessage));
    }
  }

  @override
  Future<Either<Failure, SuccessResponseModel>> assignOrderToPickupPartner(
      {required String phone,
      required String pickupId,
      required String orderId}) async {
    try {
      final response = await _apiService.post(ApiEndPoints
          .assignOrderToPickupPartner
          .replaceFirst('{partnerPhone}', phone)
          .replaceFirst('{pickUpPersonId}', pickupId)
          .replaceFirst('{orderId}', orderId));
      return Right(SuccessResponseModel.fromJson(response.data));
    } on DioException catch (e) {
      try {
        log('assignOrderToPickupPartner dio exception => $e');
        log(e.response.toString());
        ErrorResponseModel error =
            ErrorResponseModel.fromJson(e.response?.data);
        return Left(Failure(message: error.error ?? errorMessage));
      } catch (e) {
        return Left(Failure(message: errorMessage));
      }
    } catch (e) {
      log('assignOrderToPickupPartner exception => $e');
      return Left(Failure(message: errorMessage));
    }
  }

  @override
  Future<Either<Failure, SuccessResponseModel>> deAssignOrderFromPickupPartner(
      {required String phone, required String orderId}) async {
    try {
      final response = await _apiService.post(ApiEndPoints
          .deAssignOrderFromPickupPartner
          .replaceFirst('{partnerPhone}', phone)
          .replaceFirst('{orderId}', orderId));
      return Right(SuccessResponseModel.fromJson(response.data));
    } on DioException catch (e) {
      try {
        log('deAssignOrderFromPickupPartner dio exception => $e');
        log(e.response.toString());
        ErrorResponseModel error =
            ErrorResponseModel.fromJson(e.response?.data);
        return Left(Failure(message: error.error ?? errorMessage));
      } catch (e) {
        return Left(Failure(message: errorMessage));
      }
    } catch (e) {
      log('deAssignOrderFromPickupPartner exception => $e');
      return Left(Failure(message: errorMessage));
    }
  }
}
