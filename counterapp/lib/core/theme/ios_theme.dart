
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IosTheme {
  static ThemeData get theme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      primaryColor: CupertinoColors.activeBlue,
      scaffoldBackgroundColor: CupertinoColors.systemGrey6,
      textTheme: const TextTheme(
        displayLarge: TextStyle(
          fontSize: 72,
          fontWeight: FontWeight.bold,
          color: CupertinoColors.black,
        ),
        bodyLarge: TextStyle(
          fontSize: 24,
          color: CupertinoColors.systemGrey,
        ),
      ),
      iconButtonTheme: IconButtonThemeData(
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all(CupertinoColors.white),
          backgroundColor: MaterialStateProperty.all(CupertinoColors.activeBlue),
          shape: MaterialStateProperty.all(
            const CircleBorder(),
          ),
        ),
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: CupertinoColors.activeOrange,
      ),
    );
  }
}
