// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name =
        (locale.countryCode?.isEmpty ?? false)
            ? locale.languageCode
            : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// ` ابدأ رحلتك نحو الطمأنينة`
  String get onboarding1Title {
    return Intl.message(
      ' ابدأ رحلتك نحو الطمأنينة',
      name: 'onboarding1Title',
      desc: '',
      args: [],
    );
  }

  /// `اكتشف عالماً من الأذكار اليومية والتذكيرات التي تمنحك راحة البال وهدوء النفس في كل لحظة`
  String get onboarding1Description {
    return Intl.message(
      'اكتشف عالماً من الأذكار اليومية والتذكيرات التي تمنحك راحة البال وهدوء النفس في كل لحظة',
      name: 'onboarding1Description',
      desc: '',
      args: [],
    );
  }

  /// `ذكّر نفسك بما يهم`
  String get onboarding2Title {
    return Intl.message(
      'ذكّر نفسك بما يهم',
      name: 'onboarding2Title',
      desc: '',
      args: [],
    );
  }

  /// `احصل على تنبيهات بالأذكار في أوقاتك المفضلة، وابقَ على اتصال دائم بالسكينة`
  String get onboarding2Description {
    return Intl.message(
      'احصل على تنبيهات بالأذكار في أوقاتك المفضلة، وابقَ على اتصال دائم بالسكينة',
      name: 'onboarding2Description',
      desc: '',
      args: [],
    );
  }

  /// `صحتك تبدأ من طمأنينتك`
  String get onboarding3Title {
    return Intl.message(
      'صحتك تبدأ من طمأنينتك',
      name: 'onboarding3Title',
      desc: '',
      args: [],
    );
  }

  /// `مارس الذكر بانتظام لتغذية روحك وتعزيز حالتك النفسية والذهنية`
  String get onboarding3Description {
    return Intl.message(
      'مارس الذكر بانتظام لتغذية روحك وتعزيز حالتك النفسية والذهنية',
      name: 'onboarding3Description',
      desc: '',
      args: [],
    );
  }

  /// `التالي`
  String get next {
    return Intl.message('التالي', name: 'next', desc: '', args: []);
  }

  /// `تخطي`
  String get skip {
    return Intl.message('تخطي', name: 'skip', desc: '', args: []);
  }

  /// `ابدأ`
  String get start {
    return Intl.message('ابدأ', name: 'start', desc: '', args: []);
  }

  /// `مطمئن`
  String get appName {
    return Intl.message('مطمئن', name: 'appName', desc: '', args: []);
  }

  /// `الرئيسية`
  String get home {
    return Intl.message('الرئيسية', name: 'home', desc: '', args: []);
  }

  /// `المفضلة`
  String get favorite {
    return Intl.message('المفضلة', name: 'favorite', desc: '', args: []);
  }

  /// `يومك`
  String get yourChart {
    return Intl.message('يومك', name: 'yourChart', desc: '', args: []);
  }

  /// `جزاك الله خيرًا على نيتك الطيبة ❤️`
  String get onShareSuccess {
    return Intl.message(
      'جزاك الله خيرًا على نيتك الطيبة ❤️',
      name: 'onShareSuccess',
      desc: '',
      args: [],
    );
  }

  /// `حدث خطأ في المشاركة ❌`
  String get onShareError {
    return Intl.message(
      'حدث خطأ في المشاركة ❌',
      name: 'onShareError',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[Locale.fromSubtags(languageCode: 'ar')];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
