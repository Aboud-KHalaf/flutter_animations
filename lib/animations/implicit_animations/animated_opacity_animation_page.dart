import 'package:flutter/material.dart';

class AnimatedOpacityAnimationPage extends StatefulWidget {
  static const String id = "animated_opacity";

  const AnimatedOpacityAnimationPage({super.key});

  @override
  State<AnimatedOpacityAnimationPage> createState() =>
      _AnimatedOpacityAnimationPageState();
}

class _AnimatedOpacityAnimationPageState
    extends State<AnimatedOpacityAnimationPage> {
  double _opacity = 1.0; // Initial opacity (fully visible)

  void _toggleOpacity() {
    setState(() {
      // Toggle between fully visible (1.0) and fully transparent (0.0)
      _opacity = _opacity == 1.0 ? 0.0 : 1.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              duration: const Duration(seconds: 2),
              curve: Curves.easeInOut,
              opacity: _opacity,
              child: Container(
                width: 200,
                height: 200,
                color: Colors.blue,
                child: const Center(
                  child: Text(
                    "Hello, Flutter!",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _toggleOpacity,
              child: const Text("Toggle Opacity"),
            ),
          ],
        ),
      ),
    );
  }
}
