import 'package:flutter/material.dart';

class AnimatedCrossFadeAnimationPage extends StatefulWidget {
  static const String id = "anmated_cross_fade";
  const AnimatedCrossFadeAnimationPage({super.key});

  @override
  State<AnimatedCrossFadeAnimationPage> createState() =>
      _AnimatedCrossFadeAnimationPageState();
}

class _AnimatedCrossFadeAnimationPageState
    extends State<AnimatedCrossFadeAnimationPage> {
  bool _showFirst = true;

  void _toggleCrossFade() {
    setState(() {
      _showFirst = !_showFirst; // Toggle between the two widgets
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AnimatedCrossFade Example"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedCrossFade(
              firstChild: Container(
                width: 100,
                height: 100,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle, // Circle shape
                ),
                child: const Center(
                  child: Text(
                    "Circle",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              secondChild: Container(
                width: 100,
                height: 100,
                decoration: const BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.rectangle, // Square shape
                ),
                child: const Center(
                  child: Text(
                    "Square",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              crossFadeState: _showFirst
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond,
              duration: const Duration(seconds: 1),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _toggleCrossFade,
              child: const Text("Toggle CrossFade"),
            ),
          ],
        ),
      ),
    );
  }
}
