import 'package:flutter/material.dart';
import '../core/app_images.dart';
import '../core/app_theme.dart';
import '../widgets/app_button.dart';
import 'home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            AppImages.splashPlanet,
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),

          Align(
            alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: AppTheme.screenPadding),
                child: Text(
                  'Explore\nThe\nUniverse',
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),

          Align(
            alignment: Alignment.bottomCenter,
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(AppTheme.screenPadding),
                child: AppButton(
                  title: 'Explore',
                  onPressed: () => Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (_) => const HomeScreen()),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}