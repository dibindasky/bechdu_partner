// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_otp_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VerifyOtpModel _$VerifyOtpModelFromJson(Map<String, dynamic> json) =>
    VerifyOtpModel(
      otp: json['otp'] as String?,
      phone: json['phone'] as String?,
      deviceToken: json['deviceToken'] as String?,
    );

Map<String, dynamic> _$VerifyOtpModelToJson(VerifyOtpModel instance) =>
    <String, dynamic>{
      'otp': instance.otp,
      'phone': instance.phone,
      'deviceToken': instance.deviceToken,
    };
