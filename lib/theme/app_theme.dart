import 'package:flutter/material.dart';
import 'package:portfolio_app/theme/app_colors.dart';

class AppTheme {
  AppTheme._();

  static final _cardShape = RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(16),
  );

  static ThemeData get light {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
      scaffoldBackgroundColor: AppColors.lightBackground,
      appBarTheme: const AppBarTheme(
        centerTitle: true,
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
      ),
      cardTheme: CardThemeData(
        elevation: 2,
        shape: _cardShape,
        clipBehavior: Clip.antiAlias,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: AppColors.primary,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
      ),
      snackBarTheme: const SnackBarThemeData(
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  static ThemeData get dark {
    final scheme = ColorScheme.fromSeed(
      seedColor: AppColors.primary,
      brightness: Brightness.dark,
    );
    return ThemeData(
      useMaterial3: true,
      colorScheme: scheme,
      scaffoldBackgroundColor: AppColors.darkBackground,
      appBarTheme: const AppBarTheme(centerTitle: true),
      cardTheme: CardThemeData(
        elevation: 2,
        shape: _cardShape,
        clipBehavior: Clip.antiAlias,
        color: AppColors.darkSurface,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        backgroundColor: AppColors.darkSurface,
        type: BottomNavigationBarType.fixed,
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
      ),
      snackBarTheme: const SnackBarThemeData(
        behavior: SnackBarBehavior.floating,
      ),
    );
  }
}
