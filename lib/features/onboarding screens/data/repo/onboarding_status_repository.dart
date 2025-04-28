import 'package:azkar_app/core/helper/constants.dart';
import 'package:azkar_app/core/services/shared_preferences_service.dart';

class OnboardingStatusRepository {
  Future<void> saveUserSawOnboarding() async {
    await SharedPreferencesService.setBool(key: kOnboardingStatus, value: true);
  }

  Future<bool> getUserOnboardingStatus() async {
    return await SharedPreferencesService.getBool(key: kOnboardingStatus) ??
        false;
  }
}
