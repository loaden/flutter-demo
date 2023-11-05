import 'package:flutter/material.dart';
import 'package:flutterapp/animation/tween_animation_builder.dart';
import 'package:flutterapp/home.dart';
import 'package:flutterapp/layout/constrained_box.dart';
import 'package:flutterapp/state/manage_child_state.dart';
import 'package:flutterapp/animation/animated_container.dart';

// Route names
const String home = 'home';
const String constrainedBox = 'constrained_box';
const String manageChildState = 'manage_child_state';
const String animatedContainerWidget = 'animated_container_widget';
const String tweenBuilder = 'tween_animation_builder_widget';

// Control function
Route<dynamic> controller(RouteSettings settings) {
  switch (settings.name) {
    case home:
      return MaterialPageRoute(
        builder: (context) => const Home(),
      );
    case constrainedBox:
      return MaterialPageRoute(
        builder: (context) => const ConstrainedBoxLayout(),
      );
    case manageChildState:
      return MaterialPageRoute(
        builder: (context) => const ManageChildStateWidget(),
      );
    case animatedContainerWidget:
      return MaterialPageRoute(
        builder: (context) => const AnimatedContainerWidget(),
      );
    case tweenBuilder:
      return MaterialPageRoute(
        builder: (context) => const TweenBuilderWidget(),
      );
    default:
      throw ('The route does not exist');
  }
}

// Helpers
Future<dynamic> go(BuildContext context, String page) {
  return Navigator.of(context).pushNamed(page);
}

void pop(BuildContext context, {String? info}) {
  return Navigator.of(context).pop(info);
}
