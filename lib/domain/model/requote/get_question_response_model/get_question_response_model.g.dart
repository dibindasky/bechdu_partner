// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_question_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetQuestionResponseModel _$GetQuestionResponseModelFromJson(
        Map<String, dynamic> json) =>
    GetQuestionResponseModel(
      id: json['_id'] as String?,
      categoryType: json['category_type'] as String?,
      slug: json['slug'] as String?,
      sections: (json['sections'] as List<dynamic>?)
          ?.map((e) => Section.fromJson(e as Map<String, dynamic>))
          .toList(),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      categoryImage: json['categoryImage'] as String?,
    );

Map<String, dynamic> _$GetQuestionResponseModelToJson(
        GetQuestionResponseModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'category_type': instance.categoryType,
      'slug': instance.slug,
      'sections': instance.sections,
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'categoryImage': instance.categoryImage,
    };
