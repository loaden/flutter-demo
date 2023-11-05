import 'package:flutter/material.dart';

class AnimatedContainerPage extends StatefulWidget {
  const AnimatedContainerPage({super.key});

  @override
  State<AnimatedContainerPage> createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  Alignment _alignment = Alignment.topLeft;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AnimatedContainer')),
      body: AnimatedContainer(
        duration: const Duration(seconds: 2),
        curve: Curves.bounceInOut,
        alignment: _alignment,
        child: const FlutterLogo(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(
            () => _alignment = _alignment == Alignment.topLeft
                ? Alignment.topRight
                : Alignment.topLeft,
          );
        },
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
}
