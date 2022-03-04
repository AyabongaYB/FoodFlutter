import 'package:flutter/material.dart';
import 'home.dart';
import 'fooderlich_theme.dart';

void main() => runApp(const Fooderlich());

class Fooderlich extends StatelessWidget {
  // 2
  const Fooderlich({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final themey = FooderlichTheme.light();
    // TODO: Apply Home widget
    return MaterialApp(
      theme: themey,
      title: 'Fooderlich',
      home: const Home(),
    );
  }
}
