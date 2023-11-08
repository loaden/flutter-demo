import 'package:flutter/material.dart';
import 'package:flutterapp/animate/animated_builder.dart';
import 'package:flutterapp/animate/animation_controller.dart';
import 'package:flutterapp/animate/tween_animation_builder.dart';
import 'package:flutterapp/home.dart';
import 'package:flutterapp/layout/constrained_box.dart';
import 'package:flutterapp/state/manage_child_state.dart';
import 'package:flutterapp/animate/animated_container.dart';

// Route names
const String home = 'home';
const String constrainedBox = 'constrained_box';
const String manageChildState = 'manage_child_state';
const String animatedContainer = 'animated_container';
const String tweenBuilder = 'tween_animation_builder';
const String animationController = 'animation_controller';
const String animatedBuilder = 'animated_builder';

// Control function
Route<dynamic> controller(RouteSettings settings) {
  switch (settings.name) {
    case home:
      return MaterialPageRoute(
        builder: (context) => const Home(),
      );
    case constrainedBox:
      return MaterialPageRoute(
        builder: (context) => const ConstrainedBoxPage(),
      );
    case manageChildState:
      return MaterialPageRoute(
        builder: (context) => const ManageChildStatePage(),
      );
    case animatedContainer:
      return MaterialPageRoute(
        builder: (context) => const AnimatedContainerPage(),
      );
    case tweenBuilder:
      return MaterialPageRoute(
        builder: (context) => const TweenBuilderPage(),
      );
    case animationController:
      return MaterialPageRoute(
        builder: (context) => const AnimationControllerPage(),
      );
    case animatedBuilder:
      return MaterialPageRoute(
        builder: (context) => const AnimatedBuilderPage(),
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
