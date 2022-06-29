import 'package:flutter/material.dart';
import 'package:podcast/consts/app_colors.dart';

class Themes {
  static final lightTheme = ThemeData(
    iconTheme: const IconThemeData(
      color: AppColors.colorLightIcon,
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16.0),
        borderSide: const BorderSide(width: 1.0),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16.0),
        borderSide: const BorderSide(
            width: 2.0, color: AppColors.colorLightBottomNavigation),
      ),
    ),
  );
  static final darkTheme = ThemeData();
}
