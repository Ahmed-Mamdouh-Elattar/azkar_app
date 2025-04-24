import 'package:azkar_app/features/onboarding%20screens/data/repo/onboarding_status_repository.dart';

import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerLazySingleton<OnboardingStatusRepository>(
    () => OnboardingStatusRepository(),
  );
  // getIt.registerLazySingleton<ThemeRepo>(() => ThemeRepo());
}
