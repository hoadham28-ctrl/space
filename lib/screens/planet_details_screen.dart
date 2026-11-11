import 'package:flutter/material.dart';
import '../core/app_theme.dart';
import '../models/planet_model.dart';
import '../widgets/planet_3d_view.dart';
import '../widgets/planet_app_bar.dart';

class PlanetDetailsScreen extends StatelessWidget {
  final PlanetModel planet;

  const PlanetDetailsScreen({super.key, required this.planet});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    final info = <String, String>{
      'Distance from Sun (km)': planet.distanceFromSun,
      'Length of Day (hours)': planet.lengthOfDay,
      'Orbital Period (Earth years)': planet.orbitalPeriod,
      'Radius (km)': planet.radius,
      'Mass (kg)': planet.mass,
      'Gravity (m/s²)': planet.gravity,
      'Surface Area (km²)': planet.surfaceArea,
    };

    return Scaffold(
      body: Column(
        children: [
          PlanetAppBar(
            title: planet.name,
            subtitle: planet.tagline,
            showBack: true,
          ),

          SizedBox(
            height: 260,
            child: Planet3DView(
              modelPath: planet.model3d,
            ),
          ),

          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(AppTheme.screenPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('About', style: textTheme.titleLarge),
                  const SizedBox(height: 8),
                  Text(planet.about, style: textTheme.bodyLarge),
                  const SizedBox(height: 16),
                  for (final e in info.entries)
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: e.key,
                              style: const TextStyle(
                                decoration: TextDecoration.underline,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(text: ' : ${e.value}'),
                          ],
                        ),
                        style: textTheme.bodyLarge,
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