import 'package:flutter/material.dart';

import 'pages/pages.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case '/':
      return MaterialPageRoute(builder: (_) => const AuthPage());
    case '/details':
      final args = settings.arguments as DetailsArgs;
      return MaterialPageRoute(
          builder: (_) => DetailsPage(
              tag: args.tag, baseUrl: args.baseUrl, movie: args.movie));
    case '/home':
      final args = settings.arguments as HomeArgs;
      return MaterialPageRoute(builder: (_) => HomePage(images: args.images));
    case '/poster':
      final args = settings.arguments as PosterArgs;
      return MaterialPageRoute(
          builder: (_) => PosterPage(
              tag: args.tag, baseUrl: args.baseUrl, path: args.path));
    case '/profile':
      final args = settings.arguments as ProfileArgs;
      return MaterialPageRoute(
          builder: (_) => ProfilePage(account: args.account));
    case '/language-settings':
      final args = settings.arguments as LanguageArgs;
      return MaterialPageRoute(
          builder: (_) => LanguageSettingsPage(langCode: args.langCode));
    default:
      return MaterialPageRoute(
        builder: (_) => Material(
          child: Center(
            child: Text('${settings.name} undefined'),
          ),
        ),
      );
  }
}
