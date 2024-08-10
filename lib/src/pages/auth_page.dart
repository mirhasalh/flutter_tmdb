import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  static const routeName = '/';

  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    return const Material(
      child: Center(
        child: CircularProgressIndicator.adaptive(),
      ),
    );
  }
}
