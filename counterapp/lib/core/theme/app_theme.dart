
import 'package:flutter/material.dart';
import 'package:counterapp/core/theme/button_styles.dart';
import 'package:counterapp/core/theme/text_styles.dart';

class AppTheme {
  static const Color _primaryColor = Color(0xFF4A90E2); // Puedes cambiar este color

  static ThemeData get theme {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(seedColor: _primaryColor),
      // Estilos de texto
      textTheme: const TextTheme(
        displayLarge: AppTextStyles.counterNumber,
        bodyLarge: AppTextStyles.counterLabel,
      ),
      // Estilos de botones
      iconButtonTheme: AppButtonStyles.iconButtonTheme,
      floatingActionButtonTheme: AppButtonStyles.floatingActionButtonTheme,
    );
  }
}
