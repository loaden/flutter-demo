import 'package:flutter/material.dart';

class ConstrainedBoxLayout extends StatelessWidget {
  const ConstrainedBoxLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ConstrainedBox')),
      body: ConstrainedBox(
        constraints: const BoxConstraints(minHeight: 30, maxHeight: 60),
        child: Container(
          color: Colors.greenAccent,
          height: 100,
          width: 350,
          child: const TextField(),
        ),
      ),
    );
  }
}
