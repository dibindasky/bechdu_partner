// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_credited_transcations_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetCreditedTranscationsResponseModel
    _$GetCreditedTranscationsResponseModelFromJson(Map<String, dynamic> json) =>
        GetCreditedTranscationsResponseModel(
          data: (json['data'] as List<dynamic>?)
              ?.map((e) => Transcation.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$GetCreditedTranscationsResponseModelToJson(
        GetCreditedTranscationsResponseModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
