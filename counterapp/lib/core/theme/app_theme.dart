
import 'package:counterapp/core/theme/ios_theme.dart';
import 'package:flutter/material.dart';
import 'package:counterapp/core/theme/button_styles.dart';
import 'package:counterapp/core/theme/text_styles.dart';

class AppTheme {
  static const Color _primaryColor = Color(0xFF4A90E2);

  static ThemeData get defaultTheme {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(seedColor: _primaryColor),
      textTheme: const TextTheme(
        displayLarge: AppTextStyles.counterNumber,
        bodyLarge: AppTextStyles.counterLabel,
      ),
      iconButtonTheme: AppButtonStyles.iconButtonTheme,
      floatingActionButtonTheme: AppButtonStyles.floatingActionButtonTheme,
    );
  }

  static List<ThemeData> get themes => [
        defaultTheme,
        IosTheme.theme,
      ];
}
