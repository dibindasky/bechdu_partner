import 'package:json_annotation/json_annotation.dart';

part 'transcation_cash_model.g.dart';

@JsonSerializable()
class TranscationCashModel {
  @JsonKey(name: '_id')
  String? id;
  String? partnerPhone;
  int? coins;
  double? price;
  double? gstPrice;
  int? gstPercentage;
  String? status;
  String? partnerState;
  String? partnerName;
  @JsonKey(name: 'HomeState')
  String? homeState;
  String? message;
  String? createdAt;
  DateTime? updatedAt;
  @JsonKey(name: '__v')
  int? v;
  double? totalPrice;

  TranscationCashModel({
    this.id,
    this.partnerPhone,
    this.coins,
    this.price,
    this.gstPrice,
    this.gstPercentage,
    this.status,
    this.partnerState,
    this.partnerName,
    this.homeState,
    this.message,
    this.createdAt,
    this.updatedAt,
    this.v,
    this.totalPrice,
  }) {
    if (totalPrice != null) totalPrice = totalPrice!.floorToDouble();
    if (price != null) price = price!.floorToDouble();
    if (gstPrice != null) gstPrice = gstPrice!.floorToDouble();
  }

  factory TranscationCashModel.fromJson(Map<String, dynamic> json) =>
      _$TranscationCashModelFromJson(json);

  Map<String, dynamic> toJson() => _$TranscationCashModelToJson(this);
}
