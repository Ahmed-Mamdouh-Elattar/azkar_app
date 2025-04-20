import 'package:azkar_app/core/config/app_theme.dart';
import 'package:azkar_app/core/localization/generated/l10n.dart';
import 'package:azkar_app/core/presentation/pages/startup_view.dart';
import 'package:azkar_app/core/services/service_locator.dart';
import 'package:azkar_app/features/onboarding%20screens/data/repo/onboarding_status_repository.dart';
import 'package:azkar_app/features/onboarding%20screens/presentation/managers/onboarding_status_cubit/onboarding_status_cubit.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_localizations/flutter_localizations.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupServiceLocator();
  runApp(const AzkarApp());
}

class AzkarApp extends StatelessWidget {
  const AzkarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:
          (context) =>
              OnboardingStatusCubit(getIt.get<OnboardingStatusRepository>())
                ..getOnboardingStatus(),
      child: MaterialApp(
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
        themeMode: ThemeMode.system,
        debugShowCheckedModeBanner: false,
        home: const StartupView(),
      ),
    );
  }
}
