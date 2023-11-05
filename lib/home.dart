import 'package:flutter/material.dart';
import 'package:flutterapp/route.dart' as route;

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Demos')),
      body: Column(
        children: [
          TextButton(
            onPressed: () => route.go(context, route.manageChildState),
            child: const Text('管理子部件状态'),
          ),
          TextButton(
            onPressed: () => route.go(context, route.constrainedBox),
            child: const Text('ConstrainedBox 父约束'),
          ),
          TextButton(
            onPressed: () => route.go(context, route.animatedContainerWidget),
            child: const Text('AnimatedContainer'),
          ),
          TextButton(
            onPressed: () => route.go(context, route.tweenBuilder),
            child: const Text('TweenAnimationBuilder'),
          ),
        ],
      ),
    );
  }
}
