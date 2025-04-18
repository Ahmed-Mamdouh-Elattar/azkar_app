import 'package:azkar_app/core/config/app_theme.dart';
import 'package:azkar_app/core/localization/generated/l10n.dart';
import 'package:azkar_app/features/onboarding%20screens/presentation/pages/onboarding_view.dart';

import 'package:flutter/material.dart';

import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const AzkarApp());
}

class AzkarApp extends StatelessWidget {
  const AzkarApp({super.key});

  @override
  Widget build(BuildContext context) {
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
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: const OnboardingView(),
    );
  }
}
