import 'package:azkar_app/core/helper/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeRepo {
  Future<void> saveTheme({required bool isDarkMode}) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(kIsDarkMode, isDarkMode);
  } // void

  Future<bool?> getTheme() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(kIsDarkMode);
  }
}
