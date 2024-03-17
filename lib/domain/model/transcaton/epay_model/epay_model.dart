import 'package:json_annotation/json_annotation.dart';

part 'epay_model.g.dart';

@JsonSerializable()
class EpayModel {
  int? coins;
  double? price;
  double? gstPrice;
  int? gstPercentage;
  String? paymentId;

  EpayModel({
    this.coins,
    this.price,
    this.gstPrice,
    this.gstPercentage,
    this.paymentId,
  });

  factory EpayModel.fromJson(Map<String, dynamic> json) {
    return _$EpayModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$EpayModelToJson(this);

  EpayModel copyWith({
    int? coins,
    double? price,
    double? gstPrice,
    int? gstPercentage,
    String? paymentId,
  }) {
    return EpayModel(
      coins: coins ?? this.coins,
      price: price ?? this.price,
      gstPrice: gstPrice ?? this.gstPrice,
      gstPercentage: gstPercentage ?? this.gstPercentage,
      paymentId: paymentId ?? this.paymentId,
    );
  }
}
