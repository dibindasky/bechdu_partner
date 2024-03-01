// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_pickup_partner_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddPickupPartnerResponseModel _$AddPickupPartnerResponseModelFromJson(
        Map<String, dynamic> json) =>
    AddPickupPartnerResponseModel(
      message: json['message'] as String?,
      partner: json['partner'] == null
          ? null
          : Partner.fromJson(json['partner'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AddPickupPartnerResponseModelToJson(
        AddPickupPartnerResponseModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'partner': instance.partner,
    };
