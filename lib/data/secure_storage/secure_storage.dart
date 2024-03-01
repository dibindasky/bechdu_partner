import 'dart:developer';

import 'package:bechdu_partner/domain/model/token/token_model.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorage {
  static const String accessKey = 'access_key';
  static const String isLoged = 'is_logedIn';
  static const String isPartnerKey = 'is_partner';
  static const String phoneKey = 'phone_key';

  static const secureStorage = FlutterSecureStorage();

  static Future<void> saveToken({required TokenModel tokenModel}) async {
    log('save token =>() ${tokenModel.accessToken}');
    await secureStorage.write(
        key: accessKey, value: tokenModel.accessToken ?? '');
  }

  static Future<TokenModel> getToken() async {
    log('get token =>()');
    final accessToken = await secureStorage.read(key: accessKey);
    log('accessToken =>() $accessToken');
    return TokenModel(accessToken: accessToken);
  }

  static Future<void> setLogin() async {
    log('set token =>()');
    await secureStorage.write(key: isLoged, value: '1');
  }

  static Future<void> clearLogin() async {
    log('delete all secureStorage =>()');
    await secureStorage.deleteAll();
  }

  static Future<bool> getLogin() async {
    log('get login =>()');
    final login = await secureStorage.read(key: isLoged);
    log('get login =>() ${login == '1'}');
    return login == '1';
  }

  static Future<void> setRole({required bool isPartner}) async {
    log('set isBusiness token =>() $isPartner');
    await secureStorage.write(key: isPartnerKey, value: isPartner ? '1' : '0');
  }

  static Future<bool> getrole() async {
    final role = await secureStorage.read(key: isPartnerKey);
    return role == '1';
  }

  static Future<void> setPhone({required String phone}) async {
    log('set phone =>() $phone');
    await secureStorage.write(key: phoneKey, value: phone);
  }

  static Future<String?> getPhone() async {
    final phone = await secureStorage.read(key: phoneKey);
    return phone;
  }
}
