import 'package:json_annotation/json_annotation.dart';

part 'promo.g.dart';

@JsonSerializable()
class Promo {
  String? code;
  String? price;

  Promo({this.code, this.price});

  factory Promo.fromJson(Map<String, dynamic> json) => _$PromoFromJson(json);

  Map<String, dynamic> toJson() => _$PromoToJson(this);

  Promo copyWith({
    String? code,
    String? price,
  }) {
    return Promo(
      code: code ?? this.code,
      price: price ?? this.price,
    );
  }
}
