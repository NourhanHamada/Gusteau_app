import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

//CacheHelper That's Connect and Talk to local database.
class CacheHelper {
  static late SharedPreferences sharedPreferences;

  /// Here The Initialize of cache .
  static init() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  /// This fun to set [value] in local data base with [key]
  static Future<bool> setData({
    required String key,
    required dynamic value,
  }) async {
    if (value is String) {
      return await sharedPreferences.setString(key, value);
    } else if (value is bool) {
      return await sharedPreferences.setBool(key, value);
    } else if (value is double) {
      return await sharedPreferences.setDouble(key, value);
    } else if (value is List<String>) {
      return await sharedPreferences.setStringList(key, value);
    } else {
      return await sharedPreferences.setInt(key, value);
    }
  }

  /// This fun to get data already saved in local data base with [key]
  static dynamic getData({
    required String key,
  }) {
    return sharedPreferences.get(key);
  }

  /// Remove data using specific with [key]
  static Future<bool> removeData({required key}) async {
    return await sharedPreferences.remove(key);
  }

  /// Clear all data in the local data base
  static Future<bool> clearData() async {
    return await sharedPreferences.clear();
  }

  /// Saves a [value] with a [key] in the FlutterSecureStorage
  static setSecureString(String key, String value) async {
    const flutterSecureStorage =  FlutterSecureStorage();
    debugPrint('FlutterSecureStorage: setSecureString with key: $key and value: $value');
    await flutterSecureStorage.write(key: key, value: value);
  }

  /// Gets a value with a given [key] in the FlutterSecureStorage
  static getSecureString(String key,) async {
    const flutterSecureStorage =  FlutterSecureStorage();
    // debugPrint('FlutterSecureStorage: getSecureString with key: $key');
    return await flutterSecureStorage.read(key: key) ?? '';
  }

  /// Clear the value with a given [key] in the FlutterSecureStorage
  static clearSecureString(String key) async {
    const flutterSecureStorage =  FlutterSecureStorage();
    // debugPrint('FlutterSecureStorage: clearSecureString with key: $key');
    await flutterSecureStorage.delete(key: key);
  }

  /// Clear all secured storage
  static clearAllSecuredData() async {
    const flutterSecureStorage = FlutterSecureStorage();
    debugPrint('FlutterSecureStorage: clearAllSecuredData');
    await flutterSecureStorage.deleteAll();
  }

  //cacheLanguage
  Future<void> cacheLanguageCode(String languageCode) async {
    CacheHelper.setData(key: "LOCALE", value: languageCode);
  }

  Future<String> getCachedLanguageCode() async {
    final cachedLanguageCode = CacheHelper.getData(key: "LOCALE");
    if (cachedLanguageCode != null) {
      return cachedLanguageCode;
    } else {
      return "ar";
    }
  }
}
