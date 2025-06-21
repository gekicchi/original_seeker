import 'package:flutter/material.dart';
import 'package:original_seeker/theme/theme.dart';

class Preferences extends StatelessWidget {
  const Preferences({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MaterialTheme.lightScheme().primary,
        title: const Text('Preferencias'),
      ),
    );
  }
}
