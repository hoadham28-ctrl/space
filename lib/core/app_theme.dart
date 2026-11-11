import 'package:flutter/material.dart';
import 'app_colors.dart';

abstract class AppTheme {
  static const double screenPadding = 16;
  static ThemeData get dark => ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColors.black,
    colorScheme: const ColorScheme.dark(
      primary: AppColors.red,
      onPrimary: AppColors.white,
      surface: AppColors.black,
      onSurface: AppColors.white,
    ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: AppColors.white,
      ),
      bodyLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.normal,
        color: AppColors.white,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.red,
        foregroundColor: AppColors.white,
        elevation: 0,
        padding: const EdgeInsets.all(16),
        shape: const StadiumBorder(),
        textStyle: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}