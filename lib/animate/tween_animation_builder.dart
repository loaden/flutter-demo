import 'package:flutter/material.dart';

class TweenBuilderPage extends StatefulWidget {
  const TweenBuilderPage({super.key});

  @override
  State<TweenBuilderPage> createState() => _TweenBuilderPageState();
}

class _TweenBuilderPageState extends State<TweenBuilderPage> {
  double _endPosition = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("TweenAnimationBuilder")),
      body: TweenAnimationBuilder(
        duration: const Duration(seconds: 2),
        tween: Tween(begin: 0.0, end: _endPosition),
        builder: (context, value, child) {
          return Transform.translate(
            offset: Offset(value, 200),
            child: const FlutterLogo(),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() {
          _endPosition += 350.0;
          if (_endPosition > 700) _endPosition = 0.0;
        }),
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
}
