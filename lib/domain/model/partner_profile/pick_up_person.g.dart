// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pick_up_person.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PickUpPerson _$PickUpPersonFromJson(Map<String, dynamic> json) => PickUpPerson(
      phone: json['phone'] as String?,
      name: json['name'] as String?,
      role: json['role'] as String?,
      status: json['status'] as String?,
      id: json['_id'] as String?,
    );

Map<String, dynamic> _$PickUpPersonToJson(PickUpPerson instance) =>
    <String, dynamic>{
      'phone': instance.phone,
      'name': instance.name,
      'role': instance.role,
      'status': instance.status,
      '_id': instance.id,
    };
