// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_pickup_partner_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetPickupPartnerResponseModel _$GetPickupPartnerResponseModelFromJson(
        Map<String, dynamic> json) =>
    GetPickupPartnerResponseModel(
      pickUpPersons: (json['pickUpPersons'] as List<dynamic>?)
          ?.map((e) => PickUpPerson.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetPickupPartnerResponseModelToJson(
        GetPickupPartnerResponseModel instance) =>
    <String, dynamic>{
      'pickUpPersons': instance.pickUpPersons,
    };
