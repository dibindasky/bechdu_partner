import 'package:json_annotation/json_annotation.dart';

part 'verify_otp_model.g.dart';

@JsonSerializable()
class VerifyOtpModel {
  String? otp;
  String? phone;
  @JsonKey(name: 'deviceToken')
  String? deviceToken;

  VerifyOtpModel({this.otp, this.phone, this.deviceToken});

  factory VerifyOtpModel.fromJson(Map<String, dynamic> json) =>
      _$VerifyOtpModelFromJson(json);

  Map<String, dynamic> toJson() => _$VerifyOtpModelToJson(this);

  VerifyOtpModel copyWith({
    String? otp,
    String? phone,
    String? deviceToken,
  }) {
    return VerifyOtpModel(
      otp: otp ?? this.otp,
      phone: phone ?? this.phone,
      deviceToken: deviceToken ?? this.deviceToken,
    );
  }
}
