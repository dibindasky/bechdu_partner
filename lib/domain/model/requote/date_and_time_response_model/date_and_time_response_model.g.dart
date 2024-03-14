// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'date_and_time_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DateAndTimeResponseModel _$DateAndTimeResponseModelFromJson(
        Map<String, dynamic> json) =>
    DateAndTimeResponseModel(
      dates:
          (json['dates'] as List<dynamic>?)?.map((e) => e as String).toList(),
      timeSlot: (json['time_slot'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$DateAndTimeResponseModelToJson(
        DateAndTimeResponseModel instance) =>
    <String, dynamic>{
      'dates': instance.dates,
      'time_slot': instance.timeSlot,
    };
