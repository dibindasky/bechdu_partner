import 'package:bechdu_partner/domain/model/requote/price_calculation_model/selected_option.dart';
import 'package:json_annotation/json_annotation.dart';

part 'requote_price_model.g.dart';

@JsonSerializable()
class RequotePriceModel {
  String? price;
  List<SelectedOption>? options;

  RequotePriceModel({this.price, this.options});

  factory RequotePriceModel.fromJson(Map<String, dynamic> json) {
    return _$RequotePriceModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$RequotePriceModelToJson(this);
}
