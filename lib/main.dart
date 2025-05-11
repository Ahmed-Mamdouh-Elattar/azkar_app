import 'package:azkar_app/core/config/app_theme.dart';
import 'package:azkar_app/core/helper/save_azkar_list_and_close_cubit.dart';
import 'package:azkar_app/core/localization/generated/l10n.dart';
import 'package:azkar_app/core/presentation/pages/startup_view.dart';
import 'package:azkar_app/core/services/objectbox_service.dart';
import 'package:azkar_app/core/services/service_locator.dart';

import 'package:azkar_app/features/onboarding%20screens/data/repo/onboarding_status_repository.dart';
import 'package:azkar_app/features/onboarding%20screens/presentation/managers/onboarding_status_cubit/onboarding_status_cubit.dart';

import 'package:azkar_app/features/theme/presentation/cubit/cubit/theme_cubit.dart';
import 'package:azkar_app/simple_bloc_observer.dart';

import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  setupServiceLocator();
  await ObjectBoxService().init();
  await getIt.get<ThemeCubit>().getTheme();
  await saveAzkarListAndCloseCubit();

  Bloc.observer = SimpleBlocObserver();

  FlutterNativeSplash.remove();

  runApp(const AzkarApp());
}

class AzkarApp extends StatefulWidget {
  const AzkarApp({super.key});

  @override
  State<AzkarApp> createState() => _AzkarAppState();
}

class _AzkarAppState extends State<AzkarApp> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    ObjectBoxService().close();
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.detached) {
      ObjectBoxService().close();
    }
  }

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
        BlocProvider.value(value: getIt.get<ThemeCubit>()),
      ],
      child: const AzkarAppMaterial(),
    );
  }
}

class AzkarAppMaterial extends StatelessWidget {
  const AzkarAppMaterial({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeMode>(
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
    );
  }
}
