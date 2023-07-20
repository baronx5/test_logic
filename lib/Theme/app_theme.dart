import 'package:flutter/material.dart';

class AppTheme {
  static const colors = AppColors();

  const AppTheme._();

  static ThemeData lightTheme() {
    return ThemeData(
      scaffoldBackgroundColor: AppTheme.colors.color0,
      brightness: Brightness.light,
      appBarTheme: AppBarTheme(
        backgroundColor: AppTheme.colors.color0,
        foregroundColor: AppTheme.colors.color4,
        elevation: 0.0,
        centerTitle: true,
        shadowColor: Colors.transparent,
        iconTheme: IconThemeData(
          color: AppTheme.colors.color4,
        ),
        titleTextStyle: const TextStyle(fontFamily: 'han', fontSize: 24),
      ),
      fontFamily: 'han',
      textTheme: TextTheme(
        titleSmall: TextStyle(
          fontSize: 18,
          color: AppTheme.colors.color4,
        ),
        titleMedium: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.normal,
          color: AppTheme.colors.color4,
        ),
        titleLarge: TextStyle(
          fontSize: 35,
          color: AppTheme.colors.color1,
        ),
        bodySmall: TextStyle(
          fontSize: 16,
          color: AppTheme.colors.color4,
        ),
        bodyMedium: TextStyle(
          fontSize: 16,
          color: AppTheme.colors.color3,
        ),
        bodyLarge: TextStyle(
          fontSize: 35,
          color: AppTheme.colors.color4,
        ),
        headlineSmall: TextStyle(
          fontSize: 16,
          color: AppTheme.colors.color0,
        ),
        headlineMedium: TextStyle(
          fontSize: 24,
          color: AppTheme.colors.color0,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: AppTheme.colors.color4,
          backgroundColor: AppTheme.colors.color0,
          textStyle: TextStyle(
              fontSize: 16.0, fontFamily: 'han', color: AppTheme.colors.color4),
          side: BorderSide(
              color: AppTheme.colors.color4, width: 1), //<-- SEE HERE
        ),
      ),
    );
  }

  static ThemeData darkTheme() {
    return ThemeData(
      scaffoldBackgroundColor: AppTheme.colors.colord0,
      brightness: Brightness.dark,
      appBarTheme: AppBarTheme(
        backgroundColor: AppTheme.colors.colord0,
        elevation: 0.0,
        centerTitle: true,
        shadowColor: Colors.transparent,
        iconTheme: IconThemeData(
          color: AppTheme.colors.color3,
        ),
      ),
      fontFamily: 'Janna',
      textTheme: TextTheme(
        titleMedium: const TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.normal,
        ),
        titleSmall: const TextStyle(
          fontSize: 24,
        ),
        bodyLarge: TextStyle(
          fontSize: 18,
          color: AppTheme.colors.color4,
        ),
        bodyMedium: TextStyle(
          fontSize: 14,
          color: AppTheme.colors.color3,
        ),
      ),
    );
  }
}

class AppColors {
  final white = const Color(0xFFFFFFFF);
  final black = const Color(0xFF000000);
  final color0 = const Color(0xFFf8f9fa);
  final color1 = const Color(0xFFe9ecef);
  final color2 = const Color(0xFFdee2e6);
  final color3 = const Color(0xFF495057);
  final color4 = const Color(0xFF212529);

  final colord0 = const Color(0xFF110C08);
  final colord1 = const Color(0xFF160F0B);
  final colord2 = const Color(0xFF3F2F20);
  final colord3 = const Color(0xFF6D5841);

  const AppColors();
}
