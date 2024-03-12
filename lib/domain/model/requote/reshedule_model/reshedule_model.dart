import 'package:json_annotation/json_annotation.dart';

import 'pick_up_details.dart';

part 'reshedule_model.g.dart';

@JsonSerializable()
class ResheduleModel {
  PickUpDetails? pickUpDetails;

  ResheduleModel({this.pickUpDetails});

  factory ResheduleModel.fromJson(Map<String, dynamic> json) {
    return _$ResheduleModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ResheduleModelToJson(this);
}
