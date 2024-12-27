import 'package:flutter/material.dart';

class AnimatedContainerAnimationPage extends StatefulWidget {
  static const String id = "animated_container";
  const AnimatedContainerAnimationPage({super.key});

  @override
  State<AnimatedContainerAnimationPage> createState() =>
      _AnimatedContainerAnimationPageState();
}

class _AnimatedContainerAnimationPageState
    extends State<AnimatedContainerAnimationPage> {
  double _width = 100.0;
  double _height = 100.0;
  Color _color = Colors.blue;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(10.0);

  void _changeProperties() {
    setState(() {
      // Randomize properties
      _width = _width == 100.0 ? 200.0 : 100.0;
      _height = _height == 100.0 ? 200.0 : 100.0;
      _color = _color == Colors.blue ? Colors.red : Colors.blue;
      _borderRadius = _borderRadius == BorderRadius.circular(10.0)
          ? BorderRadius.circular(50.0)
          : BorderRadius.circular(10.0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: _changeProperties,
          child: AnimatedContainer(
            duration: const Duration(seconds: 1),
            curve: Curves.easeInOut,
            width: _width,
            height: _height,
            decoration: BoxDecoration(
              color: _color,
              borderRadius: _borderRadius,
            ),
            child: const Center(
              child: Text(
                "Tap Me!",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
