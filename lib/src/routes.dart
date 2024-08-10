import 'package:flutter/material.dart';

import 'pages/pages.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case '/':
      return MaterialPageRoute(builder: (_) => const AuthPage());
    case '/details':
      return MaterialPageRoute(builder: (_) => const DetailsPage());
    case '/home':
      final args = settings.arguments as HomeArgs;
      return MaterialPageRoute(builder: (_) => HomePage(images: args.images));
    case '/profile':
      return MaterialPageRoute(builder: (_) => const ProfilePage());
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
