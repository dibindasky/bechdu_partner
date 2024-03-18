// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'requote_price_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RequotePriceModel _$RequotePriceModelFromJson(Map<String, dynamic> json) =>
    RequotePriceModel(
      price: json['price'] as String?,
      options: (json['options'] as List<dynamic>?)
          ?.map((e) => SelectedOption.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RequotePriceModelToJson(RequotePriceModel instance) =>
    <String, dynamic>{
      'price': instance.price,
      'options': instance.options,
    };
