import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  static SharedPreferences sharedPreferences = CacheHelper.sharedPreferences;
  static const FlutterSecureStorage _secureStorage = FlutterSecureStorage();

  /// Call this once at app startup (e.g., in main or splash)
  static Future<void> init() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  // ───── Shared Preferences Methods ─────

  static Future<bool> saveData({
    required String key,
    required dynamic value,
  }) async {
    if (value is String) return await sharedPreferences.setString(key, value);
    if (value is int) return await sharedPreferences.setInt(key, value);
    if (value is bool) return await sharedPreferences.setBool(key, value);
    if (value is double) return await sharedPreferences.setDouble(key, value);

    throw Exception("Unsupported value type");
  }

  static dynamic getData({required String key}) {
    return sharedPreferences.get(key);
  }

  static Future<bool> removeData({required String key}) async {
    return await sharedPreferences.remove(key);
  }

  // ───── Secure Storage Methods ─────

  static Future<void> saveSecuredData({
    required String key,
    required String value,
  }) async {
    await _secureStorage.write(key: key, value: value);
  }

  static Future<String?> getSecuredData({required String key}) async {
    return await _secureStorage.read(key: key);
  }

  static Future<void> removeSecuredData({required String key}) async {
    await _secureStorage.delete(key: key);
  }

  static Future<void> clearAllSecuredData() async {
    await _secureStorage.deleteAll();
  }
}
