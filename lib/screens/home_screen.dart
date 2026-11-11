import 'package:flutter/material.dart';
import '../core/app_theme.dart';
import '../models/planet_model.dart';
import '../widgets/app_button.dart';
import '../widgets/planet_app_bar.dart';
import 'planet_details_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController _controller = PageController(viewportFraction: 0.7);
  int _index = 0;

  static const _duration = Duration(milliseconds: 400);
  static const _curve = Curves.easeInOut;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _previous() {
    if (_index > 0) _controller.previousPage(duration: _duration, curve: _curve);
  }

  void _next() {
    if (_index < planets.length - 1) {
      _controller.nextPage(duration: _duration, curve: _curve);
    }
  }

  @override
  Widget build(BuildContext context) {
    final planet = planets[_index];

    return Scaffold(
      body: Column(
        children: [
          const PlanetAppBar(
            title: 'Explore',
            subtitle: 'Which planet\nwould you like to explore?',
          ),

          Expanded(
            child: PageView.builder(
              controller: _controller,
              itemCount: planets.length,
              onPageChanged: (i) => setState(() => _index = i),
              itemBuilder: (_, i) => AnimatedScale(
                scale: i == _index ? 1 : 0.7,
                duration: _duration,
                curve: _curve,
                child: Image.asset(planets[i].image, fit: BoxFit.contain),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppTheme.screenPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleActionButton(icon: Icons.arrow_back, onPressed: _previous),
                AnimatedSwitcher(
                  duration: _duration,
                  child: Text(
                    planet.name,
                    key: ValueKey(planet.name),
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
                CircleActionButton(icon: Icons.arrow_forward, onPressed: _next),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(AppTheme.screenPadding),
            child: SafeArea(
              top: false,
              child: AppButton(
                title: 'Explore ${planet.name}',
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => PlanetDetailsScreen(planet: planet),
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