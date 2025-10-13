import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'playback/bloc/bloc.dart';
import 'providers/theme.dart';
import 'router.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final settings = ValueNotifier(
    ThemeSettings(
      sourceColor: const Color(0xff00cbe6),
      themeMode: ThemeMode.system,
    ),
  );

  late final GoRouter _router;

  @override
  void initState() {
    super.initState();
    _router = createRouter();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PlaybackBloc>(
      create: (context) => PlaybackBloc(),
      child: DynamicColorBuilder(
        builder: (lightDynamic, darkDynamic) => ThemeProvider(
          lightDynamic: lightDynamic,
          darkDynamic: darkDynamic,
          settings: settings,
          child: NotificationListener<ThemeSettingChange>(
            onNotification: (notification) {
              settings.value = notification.settings;
              return true;
            },
            child: ValueListenableBuilder<ThemeSettings>(
              valueListenable: settings,
              builder: (context, value, _) {
                // Compute theme using a local ThemeProvider so we don't need
                // to rely on Theme.of(context) before MaterialApp exists.
                final localThemeProvider = ThemeProvider(
                  settings: settings,
                  lightDynamic: lightDynamic,
                  darkDynamic: darkDynamic,
                  child: const SizedBox.shrink(),
                );

                return MaterialApp.router(
                  debugShowCheckedModeBanner: false,
                  title: 'Flutter Demo',
                  theme: localThemeProvider.light(settings.value.sourceColor),
                  darkTheme: localThemeProvider.dark(
                    settings.value.sourceColor,
                  ),
                  themeMode: localThemeProvider.themeMode(),
                  routerConfig: _router,
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
