import 'package:json_annotation/json_annotation.dart';

part 'transcation.g.dart';

@JsonSerializable()
class Transcation {
  String? type;
  String? paymentId;
  double? price;
  double? gstPrice;
  int? gstPercentage;
  String? partnerState;
  @JsonKey(name: 'HomeState')
  String? homeState;
  int? coins;
  String? message;
  @JsonKey(name: '_id')
  String? id;
  DateTime? timestamp;
  @JsonKey(name: 'orderID')
  String? orderId;

  Transcation({
    this.type,
    this.paymentId,
    this.price,
    this.gstPrice,
    this.gstPercentage,
    this.partnerState,
    this.homeState,
    this.coins,
    this.message,
    this.id,
    this.timestamp,
    this.orderId,
  });

  factory Transcation.fromJson(Map<String, dynamic> json) =>
      _$TranscationFromJson(json);

  Map<String, dynamic> toJson() => _$TranscationToJson(this);
}
