import 'package:json_annotation/json_annotation.dart';

part 'otp_model.g.dart';

@JsonSerializable()
class OtpModel {
  String? otp;

  OtpModel({this.otp});

  factory OtpModel.fromJson(Map<String, dynamic> json) {
    return _$OtpModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$OtpModelToJson(this);
}
