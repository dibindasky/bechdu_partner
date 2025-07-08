// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeviceInfo _$DeviceInfoFromJson(Map<String, dynamic> json) => DeviceInfo(
      deviceImages: json['deviceImages'] as List<dynamic>?,
      finalPrice: json['finalPrice'] as String?,
      imeiNumber: json['imeiNumber'] as String?,
    );

Map<String, dynamic> _$DeviceInfoToJson(DeviceInfo instance) =>
    <String, dynamic>{
      'deviceImages': instance.deviceImages,
      'finalPrice': instance.finalPrice,
      'imeiNumber': instance.imeiNumber,
    };
