import 'package:flutter/material.dart';
import 'package:portfolio_app/controller/theme_controller.dart';
import 'package:portfolio_app/screens/portfolio_screen.dart';
import 'package:portfolio_app/theme/app_theme.dart';

void main() {
  runApp(const PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  static final _themeController = ThemeController();

  @override
  Widget build(BuildContext context) {
    // Rebuilds MaterialApp when the theme toggles
    return ListenableBuilder(
      listenable: _themeController,
      builder: (context, _) {
        return MaterialApp(
          title: 'Kiran — Portfolio',
          debugShowCheckedModeBanner: false,
          theme: AppTheme.light,
          darkTheme: AppTheme.dark,
          themeMode: _themeController.themeMode,
          home: PortfolioScreen(themeController: _themeController),
        );
      },
    );
  }
}
