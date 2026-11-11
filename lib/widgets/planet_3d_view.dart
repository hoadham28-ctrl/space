import 'package:flutter/material.dart';
import 'package:flutter_3d_controller/flutter_3d_controller.dart';
import '../core/app_colors.dart';

class Planet3DView extends StatefulWidget {
  final String modelPath;

  const Planet3DView({super.key, required this.modelPath});

  @override
  State<Planet3DView> createState() => _Planet3DViewState();
}

class _Planet3DViewState extends State<Planet3DView> {
  final Flutter3DController _controller = Flutter3DController();

  @override
  Widget build(BuildContext context) {
    return Flutter3DViewer(
      key: ValueKey(widget.modelPath),
      controller: _controller,
      src: widget.modelPath,
      progressBarColor: AppColors.red,
    );
  }
}