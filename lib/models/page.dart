import 'package:anmations/animations/builders/animation_builder_page.dart';
import 'package:anmations/animations/excplist_animations/positioned_transation_animation_page.dart';
import 'package:anmations/animations/excplist_animations/rotation_transation_animation_page.dart';
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

class Page {
  final String pageName;
  final String pageRouteName;

  Page({
    required this.pageName,
    required this.pageRouteName,
  });
}

final List<Page> pages = [
  Page(
      pageName: 'animated aligh',
      pageRouteName: AnimatedAligmentAnimationPage.id),
  Page(
      pageName: 'animated container',
      pageRouteName: AnimatedContainerAnimationPage.id),
  Page(
      pageName: 'animated text style',
      pageRouteName: AnimatedTextStyleAnimationPage.id),
  Page(
      pageName: 'animated opacity',
      pageRouteName: AnimatedOpacityAnimationPage.id),
  Page(
      pageName: 'animated padding',
      pageRouteName: AnimatedPadingAnimationPage.id),
  Page(
    pageName: 'animated physical model',
    pageRouteName: AnimatedPhysicalModelAnimationPage.id,
  ),
  Page(
    pageName: 'animated positioned',
    pageRouteName: AnimatedPositionedAnimationPage.id,
  ),
  Page(
    pageName: 'animated positioned directional',
    pageRouteName: AnimatedPositionedDirectionalAnimationPage.id,
  ),
  Page(
    pageName: 'animated cross fade',
    pageRouteName: AnimatedCrossFadeAnimationPage.id,
  ),
  Page(
    pageName: 'animated swither',
    pageRouteName: AnimatedSwitcherAnimationPage.id,
  ),
  Page(
    pageName: 'animated list',
    pageRouteName: AnimatedListAnimationPage.id,
  ),
  Page(
    pageName: 'positioned transation',
    pageRouteName: PositionedTransationAnimationPage.id,
  ),
  Page(
    pageName: 'size transation',
    pageRouteName: SizeTransationAnimationPage.id,
  ),
  Page(
    pageName: 'rotation transation',
    pageRouteName: RotationTransationAnimationPage.id,
  ),
  Page(
    pageName: 'animation builder',
    pageRouteName: AnimationBuilderPage.id,
  ),
];
