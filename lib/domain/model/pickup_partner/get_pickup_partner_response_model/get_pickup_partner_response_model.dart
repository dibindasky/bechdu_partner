import 'package:json_annotation/json_annotation.dart';

import 'pick_up_person.dart';

part 'get_pickup_partner_response_model.g.dart';

@JsonSerializable()
class GetPickupPartnerResponseModel {
  List<PickUpPerson>? pickUpPersons;

  GetPickupPartnerResponseModel({this.pickUpPersons});

  factory GetPickupPartnerResponseModel.fromJson(Map<String, dynamic> json) {
    return _$GetPickupPartnerResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GetPickupPartnerResponseModelToJson(this);
}
