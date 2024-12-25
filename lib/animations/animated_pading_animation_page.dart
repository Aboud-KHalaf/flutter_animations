import 'package:flutter/material.dart';

class AnimatedPadingAnimationPage extends StatefulWidget {
  static const String id = "animated_padding";

  const AnimatedPadingAnimationPage({super.key});

  @override
  State<AnimatedPadingAnimationPage> createState() =>
      _AnimatedPadingAnimationPageState();
}

class _AnimatedPadingAnimationPageState
    extends State<AnimatedPadingAnimationPage> {
  double _padding = 10.0; // Initial padding

  void _togglePadding() {
    setState(() {
      // Toggle padding between 10.0 and 50.0
      _padding = _padding == 10.0 ? 50.0 : 10.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedPadding(
              duration: const Duration(seconds: 1),
              curve: Curves.easeInOut,
              padding: EdgeInsets.all(_padding),
              child: Container(
                width: 100,
                height: 100,
                color: Colors.blue,
                child: const Center(
                  child: Text(
                    "Box 1",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            AnimatedPadding(
              duration: const Duration(seconds: 1),
              curve: Curves.easeInOut,
              padding: EdgeInsets.all(_padding),
              child: Container(
                width: 150,
                height: 100,
                color: Colors.green,
                child: const Center(
                  child: Text(
                    "Box 2",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            AnimatedPadding(
              duration: const Duration(seconds: 1),
              curve: Curves.easeInOut,
              padding: EdgeInsets.all(_padding),
              child: Container(
                width: 200,
                height: 100,
                color: Colors.red,
                child: const Center(
                  child: Text(
                    "Box 3",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _togglePadding,
              child: const Text("Toggle Padding"),
            ),
          ],
        ),
      ),
    );
  }
}
