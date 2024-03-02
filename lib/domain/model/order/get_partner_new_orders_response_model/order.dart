import 'package:json_annotation/json_annotation.dart';

import 'device_info.dart';
import 'partner.dart';
import 'payment.dart';
import 'pick_up_details.dart';
import 'product_details.dart';
import 'promo.dart';
import 'user.dart';

part 'order.g.dart';

@JsonSerializable()
class Order {
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

  Order({
    this.user,
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

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);

  Map<String, dynamic> toJson() => _$OrderToJson(this);
}
