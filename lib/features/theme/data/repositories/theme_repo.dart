import 'package:azkar_app/core/helper/constants.dart';
import 'package:azkar_app/core/services/shared_preferences_service.dart';

class ThemeRepo {
  Future<void> saveTheme({required bool isDarkMode}) async {
    await SharedPreferencesService.setBool(key: kIsDarkMode, value: isDarkMode);
  } // void

  Future<bool?> getTheme() async {
    return await SharedPreferencesService.getBool(key: kIsDarkMode);
  }
}
