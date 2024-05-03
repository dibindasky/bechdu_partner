// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeviceInfo _$DeviceInfoFromJson(Map<String, dynamic> json) => DeviceInfo(
      finalPrice: json['finalPrice'] as String?,
      imeiNumber: json['imeiNumber'] as String?,
      deviceBill: json['deviceBill'] as String?,
      idCard: json['idCard'] as String?,
      deviceImages: (json['deviceImages'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      imeiImage: json['imeiImage'] as String?,
    );

Map<String, dynamic> _$DeviceInfoToJson(DeviceInfo instance) =>
    <String, dynamic>{
      'finalPrice': instance.finalPrice,
      'imeiNumber': instance.imeiNumber,
      'imeiImage': instance.imeiImage,
      'deviceBill': instance.deviceBill,
      'idCard': instance.idCard,
      'deviceImages': instance.deviceImages,
    };
