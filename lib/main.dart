import 'package:flutter/material.dart';
import 'package:flutterapp/state/parent_manage_child_state.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData.dark(),
      home: const Home(),
    ),
  );
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter 学习示例"),
      ),
      body: TextButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) {
              return const ParentManageChildStateWidget();
            }),
          );
        },
        child: const Text('父窗口管理子部件状态'),
      ),
    );
  }
}
