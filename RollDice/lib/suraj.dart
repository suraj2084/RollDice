import 'package:flutter/material.dart';
import 'package:flutter_application_1/DiceRoller.dart';

class Suraj extends StatelessWidget {
  const Suraj(this.color1, this.color2, {super.key});
  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [color1, color2],
            begin: Alignment.bottomRight,
            end: Alignment.topLeft),
      ),
      child: const Center(child: DiceRoller()),
    );
  }
}
