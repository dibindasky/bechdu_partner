import 'package:json_annotation/json_annotation.dart';

import 'partner.dart';

part 'add_pickup_partner_response_model.g.dart';

@JsonSerializable()
class AddPickupPartnerResponseModel {
  String? message;
  Partner? partner;

  AddPickupPartnerResponseModel({this.message, this.partner});

  factory AddPickupPartnerResponseModel.fromJson(Map<String, dynamic> json) {
    return _$AddPickupPartnerResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AddPickupPartnerResponseModelToJson(this);
}
