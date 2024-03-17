// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manual_transcation_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ManualTranscationResponseModel _$ManualTranscationResponseModelFromJson(
        Map<String, dynamic> json) =>
    ManualTranscationResponseModel(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => TranscationCashModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ManualTranscationResponseModelToJson(
        ManualTranscationResponseModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
