import 'package:json_annotation/json_annotation.dart';

import 'section.dart';

part 'get_question_response_model.g.dart';

@JsonSerializable()
class GetQuestionResponseModel {
  @JsonKey(name: '_id')
  String? id;
  @JsonKey(name: 'category_type')
  String? categoryType;
  String? slug;
  List<Section>? sections;

  DateTime? updatedAt;
  String? categoryImage;

  GetQuestionResponseModel({
    this.id,
    this.categoryType,
    this.slug,
    this.sections,
    this.updatedAt,
    this.categoryImage,
  });

  factory GetQuestionResponseModel.fromJson(Map<String, dynamic> json) {
    return _$GetQuestionResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GetQuestionResponseModelToJson(this);
}
