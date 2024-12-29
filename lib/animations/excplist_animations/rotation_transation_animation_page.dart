import 'package:flutter/material.dart';

class RotationTransationAnimationPage extends StatefulWidget {
  static const String id = "rotation_transation";

  const RotationTransationAnimationPage({super.key});

  @override
  State<RotationTransationAnimationPage> createState() =>
      _RotationTransationAnimationPageState();
}

class _RotationTransationAnimationPageState
    extends State<RotationTransationAnimationPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _rotationAnimation;
  late Animation<double> _sizeAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );

    // Rotation Animation
    _rotationAnimation = Tween<double>(begin: 0, end: 1).animate(_controller);

    // Size Animation
    _sizeAnimation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    );
  }

  void _toggleAnimation() {
    if (_controller.status == AnimationStatus.completed) {
      _controller.reverse();
    } else {
      _controller.forward();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Rotation + Size Transition"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RotationTransition(
                turns: _rotationAnimation,
                child: SizeTransition(
                  sizeFactor: _sizeAnimation,
                  axis: Axis.vertical,
                  axisAlignment: 0.0,
                  child: Container(
                    height: 150,
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: const Center(
                      child: Text(
                        "Rotate & Resize",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _toggleAnimation,
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              ),
              child: const Text("Toggle Animation"),
            ),
          ],
        ),
      ),
    );
  }
}
