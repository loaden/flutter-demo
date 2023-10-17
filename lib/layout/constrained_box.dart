import 'package:flutter/material.dart';

class ConstrainedBoxLayout extends StatelessWidget {
  const ConstrainedBoxLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ConstrainedBox')),
      body: ConstrainedBox(
        constraints: const BoxConstraints(minHeight: 900, minWidth: 500),
        child: Container(color: Colors.orange),
      ),
    );
  }
}
