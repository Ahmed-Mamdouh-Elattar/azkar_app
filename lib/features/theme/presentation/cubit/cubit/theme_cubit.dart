import 'package:azkar_app/features/theme/data/repositories/theme_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeCubit extends Cubit<ThemeMode> {
  ThemeCubit(this._themeRepo) : super(ThemeMode.system);
  final ThemeRepo _themeRepo;
  Future<void> changeTheme({required bool isDarkMode}) async {
    await _themeRepo.saveTheme(isDarkMode: isDarkMode);
    emit(isDarkMode ? ThemeMode.dark : ThemeMode.light);
  }

  Future<void> getTheme() async {
    final isDarkMode = await _themeRepo.getTheme();
    if (isDarkMode != null) {
      emit(isDarkMode ? ThemeMode.dark : ThemeMode.light);
    }
  }
}
