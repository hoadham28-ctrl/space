import 'package:flutter/material.dart';
import 'core/app_theme.dart';
import 'screens/splash_screen.dart';

void main() => runApp(const SpaceApp());

class SpaceApp extends StatelessWidget {
  const SpaceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Space',
      theme: AppTheme.dark,
      home: const SplashScreen(),
    );
  }
}