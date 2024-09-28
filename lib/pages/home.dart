import 'package:flutter/material.dart';
import 'package:hackyeah_2024_mobile/theme/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const routeName = 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aplikacja'),
      ),
      body: ListView(
        padding: AppTheme.spacing.screenPadding,
        children: [
          const TextField(
            decoration: InputDecoration(
              label: Text('Good morning'),
            ),
          ),
          const SizedBox(height: 16),
          FilledButton(onPressed: () {}, child: const Text('Kliknij mnie')),
        ],
      ),
    );
  }
}
