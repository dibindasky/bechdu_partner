import 'package:json_annotation/json_annotation.dart';

part 'pick_up_person.g.dart';

@JsonSerializable()
class PickUpPerson {
  String? status;
  String? phone;
  String? name;
  String? role;
  @JsonKey(name: '_id')
  String? id;
  String? loggedInDevice;

  PickUpPerson({
    this.status,
    this.phone,
    this.name,
    this.role,
    this.id,
    this.loggedInDevice,
  });

  factory PickUpPerson.fromJson(Map<String, dynamic> json) {
    return _$PickUpPersonFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PickUpPersonToJson(this);
}
