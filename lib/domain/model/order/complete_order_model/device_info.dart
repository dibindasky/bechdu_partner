import 'package:json_annotation/json_annotation.dart';

part 'device_info.g.dart';

@JsonSerializable()
class DeviceInfo {
  String? finalPrice;
  String? imeiNumber;
  String? imeiImage;
  String? deviceBill;
  List<String>? idCard; // 🔄 Changed from String? to List<String>?
  List<String>? deviceImages;

  DeviceInfo({
    this.finalPrice,
    this.imeiNumber,
    this.deviceBill,
    this.idCard,          // ✅ Updated here
    this.deviceImages,
    this.imeiImage,
  });

  factory DeviceInfo.fromJson(Map<String, dynamic> json) =>
      _$DeviceInfoFromJson(json);

  Map<String, dynamic> toJson() => _$DeviceInfoToJson(this);
}
