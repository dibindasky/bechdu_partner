import 'package:json_annotation/json_annotation.dart';

part 'pick_up_person.g.dart';

@JsonSerializable()
class PickUpPerson {
  String? phone;
  String? name;
  String? role;
  @JsonKey(name: '_id')
  String? id;

  PickUpPerson({this.phone, this.name, this.role, this.id});

  factory PickUpPerson.fromJson(Map<String, dynamic> json) {
    return _$PickUpPersonFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PickUpPersonToJson(this);
}
