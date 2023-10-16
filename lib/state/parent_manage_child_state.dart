import 'package:flutter/material.dart';

class ParentManageChildStateWidget extends StatefulWidget {
  const ParentManageChildStateWidget({super.key});

  @override
  State<ParentManageChildStateWidget> createState() =>
      _ParentManageChildStateWidgetState();
}

class _ParentManageChildStateWidgetState
    extends State<ParentManageChildStateWidget> {
  bool _green = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('父Widget管理子Widget的状态')),
      body: Row(
        children: [
          Button(
            green: _green,
            onPressed: _onBtnPressed,
          ),
        ],
      ),
    );
  }

  void _onBtnPressed(bool b) {
    setState(() {
      _green = b;
    });
  }
}

class Button extends StatelessWidget {
  const Button({super.key, this.green = false, required this.onPressed});
  final ValueChanged<bool> onPressed;
  final bool green;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: _press,
      style: ElevatedButton.styleFrom(
          backgroundColor: green ? Colors.orange : Colors.green),
      child: const Icon(Icons.add),
    );
  }

  void _press() => onPressed(!green);
}
