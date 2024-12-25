import 'package:flutter/material.dart';

class AnimatedTextStyleAnimationPage extends StatefulWidget {
  static const String id = "animated_text_style";

  const AnimatedTextStyleAnimationPage({super.key});

  @override
  State<AnimatedTextStyleAnimationPage> createState() =>
      _AnimatedTextStyleAnimationPageState();
}

class _AnimatedTextStyleAnimationPageState
    extends State<AnimatedTextStyleAnimationPage> {
  double _fontSize = 20.0;
  Color _color = Colors.blue;
  FontWeight _fontWeight = FontWeight.normal;

  void _increaseFontSize() {
    setState(() {
      _fontSize += 5;
    });
  }

  void _decreaseFontSize() {
    setState(() {
      if (_fontSize > 10) _fontSize -= 5;
    });
  }

  void _changeColor() {
    setState(() {
      _color = _color == Colors.blue ? Colors.red : Colors.blue;
    });
  }

  void _toggleFontWeight() {
    setState(() {
      _fontWeight = _fontWeight == FontWeight.normal
          ? FontWeight.bold
          : FontWeight.normal;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedDefaultTextStyle(
            duration: const Duration(milliseconds: 500),
            style: TextStyle(
              fontSize: _fontSize,
              color: _color,
              fontWeight: _fontWeight,
            ),
            child: const Text("Animated Text"),
          ),
          const SizedBox(height: 20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: _increaseFontSize,
                  child: const Text("Increase Size"),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: _decreaseFontSize,
                  child: const Text("Decrease Size"),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: _changeColor,
                  child: const Text("Change Color"),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: _toggleFontWeight,
                  child: const Text("Toggle Weight"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
