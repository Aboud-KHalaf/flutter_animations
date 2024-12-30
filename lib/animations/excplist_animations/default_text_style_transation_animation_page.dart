import 'package:flutter/material.dart';

class DefaultTextStyleTransationAnimationPage extends StatefulWidget {
  static const String id = "dts_transation";
  const DefaultTextStyleTransationAnimationPage({super.key});

  @override
  State<DefaultTextStyleTransationAnimationPage> createState() =>
      _DefaultTextStyleTransationAnimationPageState();
}

class _DefaultTextStyleTransationAnimationPageState
    extends State<DefaultTextStyleTransationAnimationPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<TextStyle> _textStyleAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    _textStyleAnimation = TextStyleTween(
      begin: const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.normal,
        color: Colors.blue,
      ),
      end: const TextStyle(
        fontSize: 36,
        fontWeight: FontWeight.bold,
        color: Colors.red,
      ),
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));
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
        title: const Text("DefaultTextStyleTransition Example"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DefaultTextStyleTransition(
              style: _textStyleAnimation,
              child: const Text("Flutter Animation!"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _toggleAnimation,
              child: const Text("Animate Text Style"),
            ),
          ],
        ),
      ),
    );
  }
}
