import 'package:flutter/material.dart';
import 'package:mayor_de_tres/presentation/theme/app_colors.dart';

class AppTheme {
  static ThemeData getTheme() {
    return ThemeData.from(
      colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
    );
  }
}
