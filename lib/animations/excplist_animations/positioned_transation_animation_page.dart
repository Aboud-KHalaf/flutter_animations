import 'package:flutter/material.dart';

class PositionedTransationAnimationPage extends StatefulWidget {
  static const String id = "positioned_transation";
  const PositionedTransationAnimationPage({super.key});

  @override
  State<PositionedTransationAnimationPage> createState() =>
      _PositionedTransationAnimationPageState();
}

class _PositionedTransationAnimationPageState
    extends State<PositionedTransationAnimationPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<RelativeRect> _animation1;
  late Animation<RelativeRect> _animation2;
  late Animation<RelativeRect> _animation3;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    );

    _animation1 = RelativeRectTween(
      begin: const RelativeRect.fromLTRB(60, 30, 100, 200),
      end: const RelativeRect.fromLTRB(200, 200, 20, 200),
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

    _animation2 = RelativeRectTween(
      begin: const RelativeRect.fromLTRB(60, 30, 100, 200),
      end: const RelativeRect.fromLTRB(150, 150, 20, 200),
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

    _animation3 = RelativeRectTween(
      begin: const RelativeRect.fromLTRB(60, 30, 100, 200),
      end: const RelativeRect.fromLTRB(100, 100, 20, 200),
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
  }

  void _startAnimation() {
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
        title: const Text("PositionedTransition Demo"),
      ),
      body: Stack(
        children: [
          PositionedTransition(
            rect: _animation3,
            child: Container(
              width: 50,
              height: 50,
              color: Colors.blue,
            ),
          ),
          PositionedTransition(
            rect: _animation2,
            child: Container(
              width: 50,
              height: 50,
              color: Colors.green,
            ),
          ),
          PositionedTransition(
            rect: _animation1,
            child: Container(
              width: 50,
              height: 50,
              color: Colors.red,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _startAnimation,
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
}
