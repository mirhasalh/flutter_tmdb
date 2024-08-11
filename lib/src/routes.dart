import 'package:flutter/material.dart';

import 'pages/pages.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case '/':
      return MaterialPageRoute(builder: (_) => const AuthPage());
    case '/details':
      final args = settings.arguments as DetailsArgs;
      return MaterialPageRoute(
          builder: (_) =>
              DetailsPage(baseUrl: args.baseUrl, movie: args.movie));
    case '/home':
      final args = settings.arguments as HomeArgs;
      return MaterialPageRoute(builder: (_) => HomePage(images: args.images));
    case '/poster':
      final args = settings.arguments as PosterArgs;
      return MaterialPageRoute(
          builder: (_) => PosterPage(baseUrl: args.baseUrl, path: args.path));
    case '/profile':
      final args = settings.arguments as ProfileArgs;
      return MaterialPageRoute(
          builder: (_) => ProfilePage(account: args.account));
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
