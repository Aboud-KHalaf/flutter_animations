import 'package:anmations/animations/animated_aligment_animation_page.dart';
import 'package:anmations/animations/animated_container_animation_page.dart';
import 'package:anmations/animations/animated_opacity_animation_page.dart';
import 'package:anmations/animations/animated_pading_animation_page.dart';
import 'package:anmations/animations/animated_text_style_animation_page.dart';
import 'package:anmations/models/page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AnmiationsApp());
}

class AnmiationsApp extends StatelessWidget {
  const AnmiationsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "anmation",
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      routes: {
        AnimatedAligmentAnimationPage.id: (context) =>
            const AnimatedAligmentAnimationPage(),
        AnimatedContainerAnimationPage.id: (context) =>
            const AnimatedContainerAnimationPage(),
        AnimatedTextStyleAnimationPage.id: (context) =>
            const AnimatedTextStyleAnimationPage(),
        AnimatedOpacityAnimationPage.id: (context) =>
            const AnimatedOpacityAnimationPage(),
        AnimatedPadingAnimationPage.id: (context) =>
            const AnimatedPadingAnimationPage(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animations"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: pages.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  pages[index].pageRouteName,
                );
              },
              child: Text(
                pages[index].pageName,
              ),
            ),
          );
        },
      ),
    );
  }
}
