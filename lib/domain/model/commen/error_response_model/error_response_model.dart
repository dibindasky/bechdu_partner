import 'package:json_annotation/json_annotation.dart';

part 'error_response_model.g.dart';

@JsonSerializable()
class ErrorResponseModel {
  String? error;

  ErrorResponseModel({this.error});

  factory ErrorResponseModel.fromJson(Map<String, dynamic> json) {
    return _$ErrorResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ErrorResponseModelToJson(this);
}
