import 'package:json_annotation/json_annotation.dart';

part 'gst_response_model.g.dart';

@JsonSerializable()
class GstResponseModel {
  int? gst;

  GstResponseModel({this.gst});

  factory GstResponseModel.fromJson(Map<String, dynamic> json) {
    return _$GstResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GstResponseModelToJson(this);
}
