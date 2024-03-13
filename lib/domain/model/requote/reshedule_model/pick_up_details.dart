import 'package:json_annotation/json_annotation.dart';

part 'pick_up_details.g.dart';

@JsonSerializable()
class PickUpDetails {
  String? time;
  String? date;
  String? reason;

  PickUpDetails({this.time, this.date, this.reason});

  factory PickUpDetails.fromJson(Map<String, dynamic> json) {
    return _$PickUpDetailsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PickUpDetailsToJson(this);
}
