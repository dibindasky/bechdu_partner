// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'partner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Partner _$PartnerFromJson(Map<String, dynamic> json) => Partner(
      id: json['_id'] as String?,
      phone: json['phone'] as String?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      address: json['address'] as String?,
      pinCodes: (json['pinCodes'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      role: json['role'] as String?,
      coins: json['coins'] as String?,
      pickUpPersons: (json['pickUpPersons'] as List<dynamic>?)
          ?.map((e) => PickUpPerson.fromJson(e as Map<String, dynamic>))
          .toList(),
      v: json['__v'] as int?,
    );

Map<String, dynamic> _$PartnerToJson(Partner instance) => <String, dynamic>{
      '_id': instance.id,
      'phone': instance.phone,
      'name': instance.name,
      'email': instance.email,
      'address': instance.address,
      'pinCodes': instance.pinCodes,
      'role': instance.role,
      'coins': instance.coins,
      'pickUpPersons': instance.pickUpPersons,
      '__v': instance.v,
    };
