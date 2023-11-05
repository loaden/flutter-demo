import 'package:flutter/material.dart';

class TweenBuilderWidget extends StatelessWidget {
  const TweenBuilderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("TweenAnimationBuilder")),
      body: TweenAnimationBuilder(
        duration: const Duration(seconds: 2),
        tween: Tween(begin: 0.0, end: 350.0),
        builder: (context, value, child) {
          return Stack(
            children: [
              Positioned(
                left: value,
                top: 200,
                child: const FlutterLogo(),
              ),
            ],
          );
        },
      ),
    );
  }
}
