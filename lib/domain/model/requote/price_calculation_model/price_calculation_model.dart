import 'package:json_annotation/json_annotation.dart';

import 'selected_option.dart';

part 'price_calculation_model.g.dart';

@JsonSerializable()
class PriceCalculationModel {
  String? categoryType;
  String? productSlug;
  List<SelectedOption>? selectedOptions;

  PriceCalculationModel({
    this.categoryType,
    this.productSlug,
    this.selectedOptions,
  });

  factory PriceCalculationModel.fromJson(Map<String, dynamic> json) {
    return _$PriceCalculationModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PriceCalculationModelToJson(this);

  PriceCalculationModel copyWith({
    String? categoryType,
    String? productSlug,
    List<SelectedOption>? selectedOptions,
  }) {
    return PriceCalculationModel(
      categoryType: categoryType ?? this.categoryType,
      productSlug: productSlug ?? this.productSlug,
      selectedOptions: selectedOptions ?? this.selectedOptions,
    );
  }
}
