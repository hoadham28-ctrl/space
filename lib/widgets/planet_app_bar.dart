
import 'package:flutter/material.dart';
import '../core/app_colors.dart';
import '../core/app_images.dart';
import 'app_button.dart';

class PlanetAppBar extends StatelessWidget {
  final String title;
  final String subtitle;
  final bool showBack;

  const PlanetAppBar({
    super.key,
    required this.title,
    required this.subtitle,
    this.showBack = false,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return SizedBox(
      width: double.infinity,
      child: Stack(
        children: [
          Image.asset(
            AppImages.appBarBackground,
            fit: BoxFit.cover,
          ),

          Positioned.fill(
            child: IgnorePointer(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      AppColors.black.withAlpha(0),
                      AppColors.black,
                    ],
                  ),
                ),
              ),
            ),
          ),

          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Text(
                        title,
                        style: textTheme.bodyLarge,
                      ),
                    ),
                  ),

                  if (showBack)
                    Align(
                      alignment: Alignment.topLeft,
                      child: CircleActionButton(
                        icon: Icons.arrow_back,
                        onPressed: () => Navigator.pop(context),
                      ),
                    ),

                  Align(
                    alignment: showBack
                        ? Alignment.centerLeft
                        : Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: showBack ? 24 : 0,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 165),
                        child: Text(
                          subtitle,
                          style: textTheme.titleLarge,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
