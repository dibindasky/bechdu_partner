import 'package:json_annotation/json_annotation.dart';

part 'coin_value_model.g.dart';

@JsonSerializable()
class CoinValueModel {
  String? coinValue;

  CoinValueModel({this.coinValue});

  factory CoinValueModel.fromJson(Map<String, dynamic> json) {
    return _$CoinValueModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CoinValueModelToJson(this);
}
