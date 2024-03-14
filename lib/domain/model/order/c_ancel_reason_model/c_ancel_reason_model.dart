import 'package:json_annotation/json_annotation.dart';

part 'c_ancel_reason_model.g.dart';

@JsonSerializable()
class CAncelReasonModel {
  String? cancellationReason;

  CAncelReasonModel({this.cancellationReason});

  factory CAncelReasonModel.fromJson(Map<String, dynamic> json) {
    return _$CAncelReasonModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CAncelReasonModelToJson(this);
}
