import 'package:json_annotation/json_annotation.dart';

part 'price_r_esponse_model.g.dart';

@JsonSerializable()
class PriceResponseModel {
  int? basePrice;

  PriceResponseModel({this.basePrice});

  factory PriceResponseModel.fromJson(Map<String, dynamic> json) {
    return _$PriceResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PriceResponseModelToJson(this);
}
