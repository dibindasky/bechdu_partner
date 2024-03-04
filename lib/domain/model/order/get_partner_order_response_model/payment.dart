import 'package:json_annotation/json_annotation.dart';

part 'payment.g.dart';

@JsonSerializable()
class Payment {
  String? type;
  String? id;

  Payment({this.type, this.id});

  factory Payment.fromJson(Map<String, dynamic> json) {
    return _$PaymentFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PaymentToJson(this);

  Payment copyWith({
    String? type,
    String? id,
  }) {
    return Payment(
      type: type ?? this.type,
      id: id ?? this.id,
    );
  }
}
