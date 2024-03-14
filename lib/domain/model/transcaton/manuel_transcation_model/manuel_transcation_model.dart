import 'package:json_annotation/json_annotation.dart';

part 'manuel_transcation_model.g.dart';

@JsonSerializable()
class ManuelTranscationModel {
  String? image;
  String? partnerPhone;
  String? coins;
  String? price;
  String? gstPrice;
  String? gstPercentage;

  ManuelTranscationModel({
    this.image,
    this.partnerPhone,
    this.coins,
    this.price,
    this.gstPrice,
    this.gstPercentage,
  });

  factory ManuelTranscationModel.fromJson(Map<String, dynamic> json) {
    return _$ManuelTranscationModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ManuelTranscationModelToJson(this);
}
