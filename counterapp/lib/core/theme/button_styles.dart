
import 'package:flutter/material.dart';

class AppButtonStyles {
  static const IconButtonThemeData iconButtonTheme = IconButtonThemeData(
    style: ButtonStyle(
      foregroundColor: WidgetStatePropertyAll(Colors.white),
      backgroundColor: WidgetStatePropertyAll(Colors.blue),
    ),
  );

  static const FloatingActionButtonThemeData floatingActionButtonTheme = FloatingActionButtonThemeData(
    backgroundColor: Colors.blue,
    foregroundColor: Colors.white,
    shape: CircleBorder(),
  );
}
