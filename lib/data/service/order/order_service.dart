import 'dart:developer';

import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:bechdu_partner/data/service/api_service.dart';
import 'package:bechdu_partner/domain/core/api_endpoints/api_endpoints.dart';
import 'package:bechdu_partner/domain/core/failure/failute.dart';
import 'package:bechdu_partner/domain/model/commen/error_response_model/error_response_model.dart';
import 'package:bechdu_partner/domain/model/order/get_partner_new_orders_response_model/get_partner_new_orders_response_model.dart';
import 'package:bechdu_partner/domain/repository/service/order_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: OrderRepo)
@injectable
class OrderService implements OrderRepo {
  final ApiService _apiService;

  OrderService(this._apiService);

  @override
  Future<Either<Failure, GetPartnerNewOrdersResponseModel>> getPartnerNewOrders(
      {required String phone}) async {
    try {
      final response = await _apiService
          .get(ApiEndPoints.getNewOrders.replaceFirst('{phone}', phone));
      return Right(GetPartnerNewOrdersResponseModel.fromJson(response.data));
    } on DioException catch (e) {
      log('send otp dio exception => $e');
      return Left(Failure(
          message: ErrorResponseModel.fromJson(e.response?.data).error));
    } catch (e) {
      log('send otp exception => $e');
      return Left(Failure(message: errorMessage));
    }
  }

  @override
  Future<Either<Failure, GetPartnerNewOrdersResponseModel>>
      getPartnerAssignedOrders({required String phone}) async {
    try {
      final response = await _apiService
          .get(ApiEndPoints.getNewOrders.replaceFirst('{phone}', phone));
      return Right(GetPartnerNewOrdersResponseModel.fromJson(response.data));
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
