// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_partner_order_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetPartnerOrderResponseModel _$GetPartnerOrderResponseModelFromJson(
        Map<String, dynamic> json) =>
    GetPartnerOrderResponseModel(
      orders: (json['orders'] as List<dynamic>?)
          ?.map((e) => OrderDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetPartnerOrderResponseModelToJson(
        GetPartnerOrderResponseModel instance) =>
    <String, dynamic>{
      'orders': instance.orders,
    };
