import 'package:json_annotation/json_annotation.dart';

import 'pick_up_person.dart';

part 'partner.g.dart';

@JsonSerializable()
class Partner {
  @JsonKey(name: '_id')
  String? id;
  String? phone;
  String? name;
  String? email;
  String? address;
  List<String>? pinCodes;
  String? role;
  String? coins;
  List<PickUpPerson>? pickUpPersons;
  @JsonKey(name: '__v')
  int? v;

  Partner({
    this.id,
    this.phone,
    this.name,
    this.email,
    this.address,
    this.pinCodes,
    this.role,
    this.coins,
    this.pickUpPersons,
    this.v,
  });

  factory Partner.fromJson(Map<String, dynamic> json) {
    return _$PartnerFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PartnerToJson(this);
}
