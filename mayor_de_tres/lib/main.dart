import 'package:flutter/material.dart';
import 'package:mayor_de_tres/presentation/providers/calculator_provider.dart';
import 'package:mayor_de_tres/presentation/screens/home_screen.dart';
import 'package:mayor_de_tres/presentation/theme/app_theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => CalculatorProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mayor de Tres',
      theme: AppTheme.getTheme(),
      home: const HomeScreen(),
    );
  }
}