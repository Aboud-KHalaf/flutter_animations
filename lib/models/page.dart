import 'package:anmations/animations/animated_aligment_animation_page.dart';
import 'package:anmations/animations/animated_container_animation_page.dart';
import 'package:anmations/animations/animated_text_style_animation_page.dart';

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
  Page(pageName: 'animated aligh', pageRouteName: 'animated_align'),
  Page(pageName: 'animated aligh', pageRouteName: 'animated_align'),
];
