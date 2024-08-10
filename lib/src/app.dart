import 'package:flutter/material.dart';

import 'routes.dart';
import 'theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TMDB',
      themeMode: ThemeMode.system,
      theme: theme,
      darkTheme: darkTheme,
      initialRoute: '/',
      onGenerateRoute: onGenerateRoute,
    );
  }
}
