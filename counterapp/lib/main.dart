
import 'package:counterapp/core/theme/app_theme.dart';
import 'package:counterapp/features/counter/presentation/bloc/counter_cubit.dart';
import 'package:counterapp/features/counter/presentation/screens/counter_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _themeNotifier = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<int>(
      valueListenable: _themeNotifier,
      builder: (context, themeIndex, _) {
        return MaterialApp(
          title: 'Counter App',
          debugShowCheckedModeBanner: false,
          theme: AppTheme.themes[themeIndex],
          home: BlocProvider(
            create: (_) => CounterCubit(),
            child: CounterScreen(
              onThemeChanged: () {
                _themeNotifier.value = (_themeNotifier.value + 1) % AppTheme.themes.length;
              },
            ),
          ),
        );
      },
    );
  }
}
