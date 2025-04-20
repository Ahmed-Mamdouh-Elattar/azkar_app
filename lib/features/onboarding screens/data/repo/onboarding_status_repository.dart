import 'package:shared_preferences/shared_preferences.dart';

class OnboardingStatusRepository {
  Future<void> saveUserSawOnboarding() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('onboardingStatus', true);
  }

  Future<bool> getUserOnboardingStatus() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool('onboardingStatus') ?? false;
  }
}
