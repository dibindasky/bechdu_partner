// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_partner_new_orders_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetPartnerNewOrdersResponseModel _$GetPartnerNewOrdersResponseModelFromJson(
        Map<String, dynamic> json) =>
    GetPartnerNewOrdersResponseModel(
      orders: (json['orders'] as List<dynamic>?)
          ?.map((e) => Order.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetPartnerNewOrdersResponseModelToJson(
        GetPartnerNewOrdersResponseModel instance) =>
    <String, dynamic>{
      'orders': instance.orders,
    };
