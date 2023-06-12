import "package:flutter/material.dart";

class Demo extends StatelessWidget {
  const Demo(this.text, {super.key});
  final String text;
  @override
  Widget build(context) {
    return Text(text,
        style: const TextStyle(color: Colors.white, fontSize: 35));
  }
}
