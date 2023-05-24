import 'package:flutter/material.dart';

class AppColors {
  static const Color primary = Color(0xFFAE9F8C);
  static const Color secondary = Color(0xFFF6F5F3);
}

ThemeData appTheme() {
  return ThemeData(
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    hoverColor: Colors.transparent,
    scaffoldBackgroundColor: AppColors.secondary,
    primaryColor: AppColors.primary,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      iconTheme: IconThemeData(color: AppColors.primary),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        splashFactory: NoSplash.splashFactory,
        elevation: 0,
        enableFeedback: false,
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      counterStyle: TextStyle(
        color: Colors.white,
      ),
    ),
  );
}
