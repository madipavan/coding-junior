import 'package:codingjunior/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final lighttheme = ThemeData(
      scaffoldBackgroundColor: AppColors.scaffoldBg, //sf bg
      primaryColor: AppColors.primary, //primary color
      brightness: Brightness.light,
      elevatedButtonTheme: ElevatedButtonThemeData(
          //button primary theme
          style: ElevatedButton.styleFrom(
              elevation: 0,
              backgroundColor: AppColors.primary,
              textStyle: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ))));
}
