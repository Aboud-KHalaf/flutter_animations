import 'package:flutter/material.dart';

class AnimatedPhysicalModelAnimationPage extends StatefulWidget {
  static const String id = "animated_physical_model";

  const AnimatedPhysicalModelAnimationPage({super.key});

  @override
  State<AnimatedPhysicalModelAnimationPage> createState() =>
      _AnimatedPhysicalModelAnimationPageState();
}

class _AnimatedPhysicalModelAnimationPageState
    extends State<AnimatedPhysicalModelAnimationPage> {
  bool _isCircle = true; // Toggles between circle and rectangle
  double _elevation = 5.0; // Initial elevation
  Color _color = Colors.blue; // Initial color
  Color _shadowColor = Colors.black; // Initial shadow color
  BorderRadius _borderRadius =
      BorderRadius.circular(50); // Initial border radius

  void _toggleShape() {
    setState(() {
      _isCircle = !_isCircle;
      _borderRadius = _isCircle
          ? BorderRadius.circular(50) // Circle shape
          : BorderRadius.circular(0); // Rectangle shape
    });
  }

  void _changeElevation() {
    setState(() {
      _elevation = _elevation == 5.0 ? 15.0 : 5.0;
    });
  }

  void _changeColor() {
    setState(() {
      _color = _color == Colors.blue ? Colors.red : Colors.blue;
    });
  }

  void _changeShadowColor() {
    setState(() {
      _shadowColor = _shadowColor == Colors.black ? Colors.grey : Colors.black;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedPhysicalModel(
              duration: const Duration(seconds: 1),
              shape: BoxShape.rectangle,
              elevation: _elevation,
              color: _color,
              shadowColor: _shadowColor,
              borderRadius: _borderRadius,
              curve: Curves.easeInOut,
              child: const SizedBox(
                width: 150,
                height: 150,
                child: Center(
                  child: Text(
                    "Tap Buttons",
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Wrap(
              spacing: 10,
              children: [
                ElevatedButton(
                  onPressed: _toggleShape,
                  child: const Text("Toggle Shape"),
                ),
                ElevatedButton(
                  onPressed: _changeElevation,
                  child: const Text("Change Elevation"),
                ),
                ElevatedButton(
                  onPressed: _changeColor,
                  child: const Text("Change Color"),
                ),
                ElevatedButton(
                  onPressed: _changeShadowColor,
                  child: const Text("Change Shadow Color"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
