import 'package:json_annotation/json_annotation.dart';

import 'device_info.dart';
import 'partner.dart';
import 'payment.dart';
import 'pick_up_details.dart';
import 'product_details.dart';
import 'promo.dart';
import 'user.dart';

part 'order_detail.g.dart';

@JsonSerializable()
class OrderDetail {
  bool notification;
  User? user;
  Payment? payment;
  PickUpDetails? pickUpDetails;
  ProductDetails? productDetails;
  Promo? promo;
  DeviceInfo? deviceInfo;
  Partner? partner;
  @JsonKey(name: '_id')
  String? id;
  String? orderId;
  String? status;
  String? cancellationReason;
  String? coins;
  DateTime? createdAt;
  DateTime? updatedAt;

  OrderDetail({
    this.user,
    this.notification = false,
    this.payment,
    this.pickUpDetails,
    this.productDetails,
    this.promo,
    this.deviceInfo,
    this.partner,
    this.id,
    this.orderId,
    this.status,
    this.cancellationReason,
    this.coins,
    this.createdAt,
    this.updatedAt,
  });

  factory OrderDetail.fromJson(Map<String, dynamic> json) =>
      _$OrderDetailFromJson(json);

  Map<String, dynamic> toJson() => _$OrderDetailToJson(this);

  OrderDetail copyWith({
    bool? notification,
    User? user,
    Payment? payment,
    PickUpDetails? pickUpDetails,
    ProductDetails? productDetails,
    Promo? promo,
    DeviceInfo? deviceInfo,
    Partner? partner,
    String? id,
    String? orderId,
    String? status,
    String? cancellationReason,
    String? coins,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return OrderDetail(
      notification: notification ?? this.notification,
      user: user ?? this.user,
      payment: payment ?? this.payment,
      pickUpDetails: pickUpDetails ?? this.pickUpDetails,
      productDetails: productDetails ?? this.productDetails,
      promo: promo ?? this.promo,
      deviceInfo: deviceInfo ?? this.deviceInfo,
      partner: partner ?? this.partner,
      id: id ?? this.id,
      orderId: orderId ?? this.orderId,
      status: status ?? this.status,
      cancellationReason: cancellationReason ?? this.cancellationReason,
      coins: coins ?? this.coins,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
