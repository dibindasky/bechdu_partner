// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'option.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Option _$OptionFromJson(Map<String, dynamic> json) => Option(
      description: json['description'] as String?,
      type: json['type'] as String?,
      image: json['image'] as String?,
      heading: json['heading'] as String?,
      value: json['value'] as bool?,
    );

Map<String, dynamic> _$OptionToJson(Option instance) => <String, dynamic>{
      'description': instance.description,
      'type': instance.type,
      'image': instance.image,
      'heading': instance.heading,
      'value': instance.value,
    };
