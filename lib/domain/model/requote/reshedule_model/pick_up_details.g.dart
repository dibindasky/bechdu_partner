// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pick_up_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PickUpDetails _$PickUpDetailsFromJson(Map<String, dynamic> json) =>
    PickUpDetails(
      time: json['time'] as String?,
      date: json['date'] as String?,
      reason: json['reason'] as String?,
    );

Map<String, dynamic> _$PickUpDetailsToJson(PickUpDetails instance) =>
    <String, dynamic>{
      'time': instance.time,
      'date': instance.date,
      'reason': instance.reason,
    };
