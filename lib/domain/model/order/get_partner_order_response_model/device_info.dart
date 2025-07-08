import 'package:json_annotation/json_annotation.dart';

part 'device_info.g.dart';

@JsonSerializable()
class DeviceInfo {
  List<dynamic>? deviceImages;
  String? finalPrice;
  String? imeiNumber;

  DeviceInfo({
    this.deviceImages,
    this.finalPrice,
    this.imeiNumber,
  });

  factory DeviceInfo.fromJson(Map<String, dynamic> json) =>
      _$DeviceInfoFromJson(json);

  Map<String, dynamic> toJson() => _$DeviceInfoToJson(this);

  DeviceInfo copyWith({
    List<dynamic>? deviceImages,
    String? finalPrice,
    String? imeiNumber,
  }) {
    return DeviceInfo(
      deviceImages: deviceImages ?? this.deviceImages,
      finalPrice: finalPrice ?? this.finalPrice,
      imeiNumber: imeiNumber ?? this.imeiNumber,
    );
  }
}
