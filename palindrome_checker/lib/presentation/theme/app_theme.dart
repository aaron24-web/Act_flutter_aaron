import 'package:flutter/material.dart';
import 'package:palindrome_checker/presentation/theme/app_colors.dart';

class AppTheme {
  static ThemeData getTheme() {
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
      useMaterial3: true,
    );
  }
}
