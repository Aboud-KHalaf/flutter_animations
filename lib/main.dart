import 'package:anmations/animations/excplist_animations/positioned_transation_animation_page.dart';
import 'package:anmations/animations/excplist_animations/size_transation_animation_page.dart';
import 'package:anmations/animations/implicit_animations/animated_aligment_animation_page.dart';
import 'package:anmations/animations/implicit_animations/animated_container_animation_page.dart';
import 'package:anmations/animations/implicit_animations/animated_cross_fade_animation_page.dart';
import 'package:anmations/animations/implicit_animations/animated_list_animation_page.dart';
import 'package:anmations/animations/implicit_animations/animated_opacity_animation_page.dart';
import 'package:anmations/animations/implicit_animations/animated_pading_animation_page.dart';
import 'package:anmations/animations/implicit_animations/animated_physical_model_animation_page.dart';
import 'package:anmations/animations/implicit_animations/animated_positioned_animation_page.dart';
import 'package:anmations/animations/implicit_animations/animated_positioned_directional_animation_page.dart';
import 'package:anmations/animations/implicit_animations/animated_switcher_animation_page.dart';
import 'package:anmations/animations/implicit_animations/animated_text_style_animation_page.dart';
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
        AnimatedPhysicalModelAnimationPage.id: (context) =>
            const AnimatedPhysicalModelAnimationPage(),
        AnimatedPositionedAnimationPage.id: (context) =>
            const AnimatedPositionedAnimationPage(),
        AnimatedPositionedDirectionalAnimationPage.id: (context) =>
            const AnimatedPositionedDirectionalAnimationPage(),
        AnimatedCrossFadeAnimationPage.id: (context) =>
            const AnimatedCrossFadeAnimationPage(),
        AnimatedSwitcherAnimationPage.id: (context) =>
            const AnimatedSwitcherAnimationPage(),
        AnimatedListAnimationPage.id: (context) =>
            const AnimatedListAnimationPage(),
        PositionedTransationAnimationPage.id: (context) =>
            const PositionedTransationAnimationPage(),
        SizeTransationAnimationPage.id: (context) =>
            const SizeTransationAnimationPage(),
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
