import 'package:flutter/material.dart';

class AnimatedPositionedAnimationPage extends StatefulWidget {
  static const String id = "animated_positioned";

  const AnimatedPositionedAnimationPage({super.key});

  @override
  State<AnimatedPositionedAnimationPage> createState() =>
      _AnimatedPositionedExampleState();
}

class _AnimatedPositionedExampleState
    extends State<AnimatedPositionedAnimationPage> {
  double _top1 = 50.0;
  double _left1 = 50.0;

  double _top2 = 150.0;
  double _right2 = 50.0;

  double _bottom3 = 50.0;
  double _left3 = 150.0;

  void _moveTopLeft() {
    setState(() {
      _top1 = _top1 == 50.0 ? 200.0 : 50.0;
      _left1 = _left1 == 50.0 ? 200.0 : 50.0;
    });
  }

  void _moveTopRight() {
    setState(() {
      _top2 = _top2 == 150.0 ? 50.0 : 150.0;
      _right2 = _right2 == 50.0 ? 200.0 : 50.0;
    });
  }

  void _moveBottomLeft() {
    setState(() {
      _bottom3 = _bottom3 == 50.0 ? 200.0 : 50.0;
      _left3 = _left3 == 150.0 ? 50.0 : 150.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AnimatedPositioned Example"),
      ),
      body: Stack(
        children: [
          AnimatedPositioned(
            duration: const Duration(seconds: 1),
            top: _top1,
            left: _left1,
            child: GestureDetector(
              onTap: _moveTopLeft,
              child: Container(
                width: 50,
                height: 50,
                color: Colors.blue,
                child: const Center(
                  child: Text(
                    "Box 1",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
          AnimatedPositioned(
            duration: const Duration(seconds: 1),
            top: _top2,
            right: _right2,
            child: GestureDetector(
              onTap: _moveTopRight,
              child: Container(
                width: 50,
                height: 50,
                color: Colors.green,
                child: const Center(
                  child: Text(
                    "Box 2",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
          AnimatedPositioned(
            duration: const Duration(seconds: 1),
            bottom: _bottom3,
            left: _left3,
            child: GestureDetector(
              onTap: _moveBottomLeft,
              child: Container(
                width: 50,
                height: 50,
                color: Colors.red,
                child: const Center(
                  child: Text(
                    "Box 3",
                    style: TextStyle(color: Colors.white),
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
