import 'package:azkar_app/features/favorites/data/repositories/favorites_repo.dart';
import 'package:azkar_app/features/favorites/data/sources/favorites_local_storage.dart';
import 'package:azkar_app/features/home/data/repos/local_storage_repo.dart';
import 'package:azkar_app/features/home/data/sources/json_data.dart';
import 'package:azkar_app/features/home/data/sources/local_storage.dart';
import 'package:azkar_app/features/home/presentation/managers/azkar_cubit/azkar_cubit.dart';
import 'package:azkar_app/features/onboarding%20screens/data/repo/onboarding_status_repository.dart';
import 'package:azkar_app/features/theme/data/repositories/theme_repo.dart';
import 'package:azkar_app/features/theme/presentation/cubit/cubit/theme_cubit.dart';

import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerLazySingleton<OnboardingStatusRepository>(
    () => OnboardingStatusRepository(),
  );
  getIt.registerLazySingleton<ThemeRepo>(() => ThemeRepo());
  getIt.registerLazySingleton<JsonDataImpl>(() => JsonDataImpl());
  getIt.registerLazySingleton<LocalStorageImpl>(
    () => LocalStorageImpl(jsonData: getIt.get<JsonDataImpl>()),
  );
  getIt.registerLazySingleton<LocalStorageRepo>(
    () => LocalStorageRepo(localStorage: getIt.get<LocalStorageImpl>()),
  );
  getIt.registerLazySingleton<ThemeCubit>(
    () => ThemeCubit(getIt.get<ThemeRepo>()),
  );
  getIt.registerLazySingleton<FavoritesLocalStorageImpl>(
    () => FavoritesLocalStorageImpl(),
  );
  getIt.registerLazySingleton<FavoritesRepository>(
    () => FavoritesRepository(getIt.get<FavoritesLocalStorageImpl>()),
  );
  getIt.registerFactory<AzkarCubit>(
    () => AzkarCubit(localStorageRepo: getIt.get<LocalStorageRepo>()),
  );
}
