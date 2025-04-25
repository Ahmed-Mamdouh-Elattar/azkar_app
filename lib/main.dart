import 'package:azkar_app/core/config/app_theme.dart';
import 'package:azkar_app/core/localization/generated/l10n.dart';
import 'package:azkar_app/core/presentation/pages/startup_view.dart';
import 'package:azkar_app/core/services/service_locator.dart';
import 'package:azkar_app/features/onboarding%20screens/data/repo/onboarding_status_repository.dart';
import 'package:azkar_app/features/onboarding%20screens/presentation/managers/onboarding_status_cubit/onboarding_status_cubit.dart';
import 'package:azkar_app/features/theme/data/repositories/theme_repo.dart';
import 'package:azkar_app/features/theme/presentation/cubit/cubit/theme_cubit.dart';

import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  setupServiceLocator();
  ThemeCubit themeCubit = ThemeCubit(getIt.get<ThemeRepo>());
  await themeCubit.getTheme();
  FlutterNativeSplash.remove();

  runApp(AzkarApp(themeCubit: themeCubit));
}

class AzkarApp extends StatelessWidget {
  const AzkarApp({required this.themeCubit, super.key});
  final ThemeCubit themeCubit;
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create:
              (context) => OnboardingStatusCubit(
                onboardingStatusRepository:
                    getIt.get<OnboardingStatusRepository>(),
              )..getOnboardingStatus(),
        ),
        BlocProvider.value(value: themeCubit),
      ],
      child: BlocBuilder<ThemeCubit, ThemeMode>(
        builder: (context, mode) {
          return MaterialApp(
            locale: const Locale('ar'),
            localizationsDelegates: const [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: S.delegate.supportedLocales,
            darkTheme: AppTheme.darkTheme,
            theme: AppTheme.lightTheme,
            themeMode: mode,
            debugShowCheckedModeBanner: false,
            home: const StartupView(),
          );
        },
      ),
    );
  }
}
