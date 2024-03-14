// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manuel_transcation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ManuelTranscationModel _$ManuelTranscationModelFromJson(
        Map<String, dynamic> json) =>
    ManuelTranscationModel(
      image: json['image'] as String?,
      partnerPhone: json['partnerPhone'] as String?,
      coins: json['coins'] as String?,
      price: json['price'] as String?,
      gstPrice: json['gstPrice'] as String?,
      gstPercentage: json['gstPercentage'] as String?,
    );

Map<String, dynamic> _$ManuelTranscationModelToJson(
        ManuelTranscationModel instance) =>
    <String, dynamic>{
      'image': instance.image,
      'partnerPhone': instance.partnerPhone,
      'coins': instance.coins,
      'price': instance.price,
      'gstPrice': instance.gstPrice,
      'gstPercentage': instance.gstPercentage,
    };
