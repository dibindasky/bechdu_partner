// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_otp_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VerifyOtpResponseModel _$VerifyOtpResponseModelFromJson(
        Map<String, dynamic> json) =>
    VerifyOtpResponseModel(
      role: json['role'] as String?,
      phone: json['phone'] as String?,
      token: json['token'] as String?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$VerifyOtpResponseModelToJson(
        VerifyOtpResponseModel instance) =>
    <String, dynamic>{
      'role': instance.role,
      'phone': instance.phone,
      'token': instance.token,
      'message': instance.message,
    };
