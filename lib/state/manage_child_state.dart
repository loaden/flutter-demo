import 'package:flutter/material.dart';

class ManageChildStateWidget extends StatefulWidget {
  const ManageChildStateWidget({super.key});

  @override
  State<ManageChildStateWidget> createState() => _ManageChildStateWidgetState();
}

class _ManageChildStateWidgetState extends State<ManageChildStateWidget> {
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
      child: const Icon(Icons.ads_click),
    );
  }

  void _press() => onPressed(!green);
}
