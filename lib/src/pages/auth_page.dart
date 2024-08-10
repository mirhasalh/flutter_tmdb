import 'package:flutter/material.dart';

import '../models/config_images.dart';
import '../tmdb_apis.dart';
import 'home_page.dart' show HomeArgs;

class AuthPage extends StatefulWidget {
  static const routeName = '/';

  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  void initState() {
    super.initState();
    getConfiguration(
      onSuccess: (v) => _toHome(v),
      onError: (v) => _showError(v),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Material(
      child: Center(
        child: CircularProgressIndicator.adaptive(),
      ),
    );
  }

  void _showError(int status) {
    final message = ScaffoldMessenger.of(context);
    message.showSnackBar(SnackBar(content: Text('Failed to load. [$status]')));
  }

  void _toHome(ConfigImages images) {
    final nav = Navigator.of(context);
    nav.pushReplacementNamed('/home', arguments: HomeArgs(images));
  }
}
