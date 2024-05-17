import 'package:shared_preferences/shared_preferences.dart';

class LocalSharedPreferences {
  static Future<SharedPreferences> _init() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

    return sharedPreferences;
  }

  static Future<bool> writeKey(String key, String data) async {
    bool result = false;

    await _init().then((sPrefs) async =>
    await sPrefs.setString(key, data).then((writeResult) => result = writeResult)
    );

    return result;
  }

  static Future<String?> readKey(String key) async {
    String? result;

    await _init().then((sPrefs) => result = sPrefs.getString(key));

    return result;
  }

  static Future<bool> deleteKey(String key) async {
    bool result = false;

    await _init().then((sPrefs) async =>
    await sPrefs.remove(key).then((removeResult) => result = removeResult)
    );

    return result;
  }

  static Future<bool> clearKey() async {
    bool result = false;

    await _init().then((sPrefs) async =>
    await sPrefs.clear().then((clearResult) => result = clearResult)
    );

    return result;
  }
}