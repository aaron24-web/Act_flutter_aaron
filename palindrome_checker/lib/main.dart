import 'package:flutter/material.dart';
import 'package:palindrome_checker/presentation/providers/palindrome_provider.dart';
import 'package:palindrome_checker/presentation/screens/home_screen.dart';
import 'package:palindrome_checker/presentation/theme/app_theme.dart';
import 'package:provider/provider.dart';

void main() => runApp(const AppState());

class AppState extends StatelessWidget {
  const AppState({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => PalindromeProvider(),
      child: const MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Palindrome Checker',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.getTheme(),
      home: const HomeScreen(),
    );
  }
}