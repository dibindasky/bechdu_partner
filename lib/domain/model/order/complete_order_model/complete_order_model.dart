import 'package:json_annotation/json_annotation.dart';

import 'device_info.dart';

part 'complete_order_model.g.dart';

@JsonSerializable()
class CompleteOrderModel {
  DeviceInfo? deviceInfo;

  CompleteOrderModel({this.deviceInfo});

  factory CompleteOrderModel.fromJson(Map<String, dynamic> json) {
    return _$CompleteOrderModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CompleteOrderModelToJson(this);
}
