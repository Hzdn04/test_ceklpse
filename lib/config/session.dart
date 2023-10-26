import 'package:shared_preferences/shared_preferences.dart';


class Session {
  // =============================Manajemen Token============================
  static Future<String?> getToken() async {
    final pref = await SharedPreferences.getInstance();
    String? token = pref.getString('token');
    // print(token);
    return token;
  }

  static Future<bool> clearToken() async {
    final pref = await SharedPreferences.getInstance();
    bool success = await pref.remove('token');

    return success;
  }

}