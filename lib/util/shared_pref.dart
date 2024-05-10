import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefs {
  static late final SharedPreferences sharedPrefs;
    static Future<SharedPreferences> init() async {
    sharedPrefs = await SharedPreferences.getInstance();
    return sharedPrefs;
    }
} 