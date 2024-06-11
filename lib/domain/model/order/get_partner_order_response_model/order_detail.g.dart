// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderDetail _$OrderDetailFromJson(Map<String, dynamic> json) => OrderDetail(
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      notification: json['notification'] as bool? ?? false,
      payment: json['payment'] == null
          ? null
          : Payment.fromJson(json['payment'] as Map<String, dynamic>),
      pickUpDetails: json['pickUpDetails'] == null
          ? null
          : PickUpDetails.fromJson(
              json['pickUpDetails'] as Map<String, dynamic>),
      productDetails: json['productDetails'] == null
          ? null
          : ProductDetails.fromJson(
              json['productDetails'] as Map<String, dynamic>),
      promo: json['promo'] == null
          ? null
          : Promo.fromJson(json['promo'] as Map<String, dynamic>),
      deviceInfo: json['deviceInfo'] == null
          ? null
          : DeviceInfo.fromJson(json['deviceInfo'] as Map<String, dynamic>),
      partner: json['partner'] == null
          ? null
          : Partner.fromJson(json['partner'] as Map<String, dynamic>),
      id: json['_id'] as String?,
      orderId: json['orderId'] as String?,
      status: json['status'] as String?,
      cancellationReason: json['cancellationReason'] as String?,
      coins: json['coins'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$OrderDetailToJson(OrderDetail instance) =>
    <String, dynamic>{
      'notification': instance.notification,
      'user': instance.user,
      'payment': instance.payment,
      'pickUpDetails': instance.pickUpDetails,
      'productDetails': instance.productDetails,
      'promo': instance.promo,
      'deviceInfo': instance.deviceInfo,
      'partner': instance.partner,
      '_id': instance.id,
      'orderId': instance.orderId,
      'status': instance.status,
      'cancellationReason': instance.cancellationReason,
      'coins': instance.coins,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
