import 'package:bechdu_partner/domain/core/failure/failute.dart';
import 'package:bechdu_partner/domain/model/pickup_partner/add_pickup_partner_model/add_pickup_partner_model.dart';
import 'package:bechdu_partner/domain/model/pickup_partner/add_pickup_partner_response_model/add_pickup_partner_response_model.dart';
import 'package:dartz/dartz.dart';

abstract class PickupPartnerRepo {
  Future<Either<Failure, AddPickupPartnerResponseModel>> addPickupPartner(
      {required AddPickupPartnerModel addPickupPartnerModel});
}
