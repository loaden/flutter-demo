import 'package:flutter/material.dart';
import 'package:flutterapp/state/parent_manage_child_state.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData.dark(),
      home: const Home(),
      routes: {
        'parent_manage_child_state': (context) =>
            const ParentManageChildStateWidget(),
      },
    ),
  );
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter 学习示例'),
      ),
      body: Column(
        children: [
          TextButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) {
                  return const ParentManageChildStateWidget();
                }),
              );
            },
            child: const Text('父窗口管理子部件状态'),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed('parent_manage_child_state');
            },
            child: const Text('父窗口管理子部件状态-命名路由'),
          ),
        ],
      ),
    );
  }
}
