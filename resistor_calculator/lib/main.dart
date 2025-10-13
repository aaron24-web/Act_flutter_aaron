import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:resistor_calculator/presentation/providers/resistor_provider.dart';
import 'package:resistor_calculator/presentation/screens/home_screen.dart';
import 'package:resistor_calculator/presentation/theme/app_theme.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ResistorProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Resistor Calculator',
      theme: AppTheme.getTheme(),
      home: const HomeScreen(),
    );
  }
}