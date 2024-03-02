import 'package:bechdu_partner/domain/core/failure/failute.dart';
import 'package:bechdu_partner/domain/model/order/get_partner_new_orders_response_model/get_partner_new_orders_response_model.dart';
import 'package:dartz/dartz.dart';

abstract class OrderRepo {
  Future<Either<Failure, GetPartnerNewOrdersResponseModel>> getPartnerNewOrders(
      {required String phone});
  Future<Either<Failure, GetPartnerNewOrdersResponseModel>>
      getPartnerAssignedOrders({required String phone});
}
