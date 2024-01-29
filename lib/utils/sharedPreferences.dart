import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  static Future<String> readValue(String key) async {
    final prefs = await SharedPreferences.getInstance();
    String? value = prefs.getString(key);
    return value!;
  }

  static Future<void> storeValue(String key, String value) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(key, value);
  }
}