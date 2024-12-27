import 'package:flutter/material.dart';

class AnimatedAligmentAnimationPage extends StatefulWidget {
  static const id = "animated_align";
  const AnimatedAligmentAnimationPage({super.key});

  @override
  State<AnimatedAligmentAnimationPage> createState() =>
      _AnimatedAligmentAnimationPageState();
}

class _AnimatedAligmentAnimationPageState
    extends State<AnimatedAligmentAnimationPage> {
  Alignment _alignment = Alignment.topCenter;
  int _alignmentsIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        _alignment = alignments[_alignmentsIndex++ % alignments.length];
        setState(() {});
      }),
      body: AnimatedAlign(
        alignment: _alignment,
        duration: const Duration(seconds: 1),
        child: Container(
          width: 50,
          height: 50,
          color: Colors.cyan,
        ),
      ),
    );
  }

  List<Alignment> alignments = [
    Alignment.topLeft,
    Alignment.topCenter,
    Alignment.topRight,
    Alignment.centerLeft,
    Alignment.center,
    Alignment.centerRight,
    Alignment.bottomLeft,
    Alignment.bottomCenter,
    Alignment.bottomRight,
  ];
}
