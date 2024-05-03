import 'package:json_annotation/json_annotation.dart';

part 'device_info.g.dart';

@JsonSerializable()
class DeviceInfo {
  String? finalPrice;
  String? imeiNumber;
  String? imeiImage;
  String? deviceBill;
  String? idCard;
  List<String>? deviceImages;

  DeviceInfo({
    this.finalPrice,
    this.imeiNumber,
    this.deviceBill,
    this.idCard,
    this.deviceImages,
    this.imeiImage,
  });

  factory DeviceInfo.fromJson(Map<String, dynamic> json) {
    return _$DeviceInfoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DeviceInfoToJson(this);
}
