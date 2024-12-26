import 'package:flutter/material.dart';

class AnimatedPositionedDirectionalAnimationPage extends StatefulWidget {
  static const String id = "animated_positioned_directional";
  const AnimatedPositionedDirectionalAnimationPage({super.key});

  @override
  State<AnimatedPositionedDirectionalAnimationPage> createState() =>
      _AnimatedPositionedDirectionalAnimationPageState();
}

class _AnimatedPositionedDirectionalAnimationPageState
    extends State<AnimatedPositionedDirectionalAnimationPage> {
  double _start = 100.0; // Start position (left in LTR)
  double _top = 100.0; // Top position

  void _moveUp() {
    setState(() {
      _top = (_top > 10) ? _top - 20 : _top; // Move circle up
    });
  }

  void _moveDown() {
    setState(() {
      _top = (_top < MediaQuery.of(context).size.height - 110)
          ? _top + 20
          : _top; // Move circle down
    });
  }

  void _moveLeft() {
    setState(() {
      _start = (_start > 10) ? _start - 20 : _start; // Move circle left
    });
  }

  void _moveRight() {
    setState(() {
      _start = (_start < MediaQuery.of(context).size.width - 110)
          ? _start + 20
          : _start; // Move circle right
    });
  }

  void _onDragUpdate(DragUpdateDetails details) {
    setState(() {
      _start += details.delta.dx; // Update start position
      _top += details.delta.dy; // Update top position

      // Ensure the circle stays within the screen bounds
      _start = _start.clamp(0.0, MediaQuery.of(context).size.width - 100);
      _top = _top.clamp(0.0, MediaQuery.of(context).size.height - 100);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AnimatedPositionedDirectional Circle Example"),
      ),
      body: Stack(
        children: [
          AnimatedPositionedDirectional(
            duration: const Duration(milliseconds: 200),
            start: _start,
            top: _top,
            child: GestureDetector(
              onPanUpdate: _onDragUpdate, // Detect dragging
              child: Container(
                width: 100,
                height: 100,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                ),
                child: const Center(
                  child: Text(
                    "Move Me",
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: _moveUp,
                  child: const Icon(Icons.arrow_upward),
                ),
                ElevatedButton(
                  onPressed: _moveLeft,
                  child: const Icon(Icons.arrow_back),
                ),
                ElevatedButton(
                  onPressed: _moveRight,
                  child: const Icon(Icons.arrow_forward),
                ),
                ElevatedButton(
                  onPressed: _moveDown,
                  child: const Icon(Icons.arrow_downward),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
