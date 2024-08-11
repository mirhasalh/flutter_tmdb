import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'providers/locale_provider.dart';
import 'providers/theme_provider.dart';
import 'routes.dart';
import 'theme.dart';

class App extends ConsumerWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale = ref.watch(localeProvider).locale;
    final themeMode = ref.watch(themeProvider).themeMode;

    return MaterialApp(
      title: 'TMDB',
      locale: locale,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      themeMode: themeMode,
      theme: theme,
      darkTheme: darkTheme,
      initialRoute: '/',
      onGenerateRoute: onGenerateRoute,
    );
  }
}
