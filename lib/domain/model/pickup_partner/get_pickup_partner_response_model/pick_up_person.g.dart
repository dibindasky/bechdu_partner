// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pick_up_person.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PickUpPerson _$PickUpPersonFromJson(Map<String, dynamic> json) => PickUpPerson(
      status: json['status'] as String?,
      phone: json['phone'] as String?,
      name: json['name'] as String?,
      role: json['role'] as String?,
      id: json['_id'] as String?,
      loggedInDevice: json['loggedInDevice'] as String?,
    );

Map<String, dynamic> _$PickUpPersonToJson(PickUpPerson instance) =>
    <String, dynamic>{
      'status': instance.status,
      'phone': instance.phone,
      'name': instance.name,
      'role': instance.role,
      '_id': instance.id,
      'loggedInDevice': instance.loggedInDevice,
    };
