import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';

class DeviceInformation {
  static Future<String> getDeviceInformation() async {
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    if (Platform.isAndroid) {
      AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
      print(
          'Running on ${androidInfo.model} ${androidInfo.id}'); // e.g. "Moto G (4)"
      return androidInfo.model + androidInfo.id;
    } else {
      IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
      print('Running on ${iosInfo.utsname.machine} ${iosInfo.localizedModel}');
      return iosInfo.utsname.machine + iosInfo.localizedModel;
    }
  }
}
