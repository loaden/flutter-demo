import 'package:flutter/material.dart';

class AnimatedBuilderPage extends StatefulWidget {
  const AnimatedBuilderPage({super.key});

  @override
  State<AnimatedBuilderPage> createState() => _AnimatedBuilderPageState();
}

class _AnimatedBuilderPageState extends State<AnimatedBuilderPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation _widthAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat();
    _widthAnimation = Tween(begin: 110.0, end: 220.0).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AnimatedBuilder"),
      ),
      body: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          print(_controller.value);
          return Center(
            child: Container(
              width: _widthAnimation.value,
              height: 200,
              color: Colors.blue,
              child: child,
            ),
          );
        },
        child: const Center(
          child: Text(
            "Hi",
            style: TextStyle(fontSize: 80),
          ),
        ),
      ),
    );
  }
}
