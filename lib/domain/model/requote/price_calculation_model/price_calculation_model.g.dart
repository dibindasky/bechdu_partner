// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'price_calculation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PriceCalculationModel _$PriceCalculationModelFromJson(
        Map<String, dynamic> json) =>
    PriceCalculationModel(
      categoryType: json['categoryType'] as String?,
      productSlug: json['productSlug'] as String?,
      selectedOptions: (json['selectedOptions'] as List<dynamic>?)
          ?.map((e) => SelectedOption.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PriceCalculationModelToJson(
        PriceCalculationModel instance) =>
    <String, dynamic>{
      'categoryType': instance.categoryType,
      'productSlug': instance.productSlug,
      'selectedOptions': instance.selectedOptions,
    };
