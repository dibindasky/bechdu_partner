import 'package:json_annotation/json_annotation.dart';

part 'add_pickup_partner_model.g.dart';

@JsonSerializable()
class AddPickupPartnerModel {
  String? phone;
  String? name;

  AddPickupPartnerModel({this.phone, this.name});

  factory AddPickupPartnerModel.fromJson(Map<String, dynamic> json) {
    return _$AddPickupPartnerModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AddPickupPartnerModelToJson(this);
}
