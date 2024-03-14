// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reshedule_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResheduleModel _$ResheduleModelFromJson(Map<String, dynamic> json) =>
    ResheduleModel(
      pickUpDetails: json['pickUpDetails'] == null
          ? null
          : PickUpDetails.fromJson(
              json['pickUpDetails'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ResheduleModelToJson(ResheduleModel instance) =>
    <String, dynamic>{
      'pickUpDetails': instance.pickUpDetails,
    };
