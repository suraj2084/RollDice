import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});
  final void Function() startQuiz;
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets/images/quiz-logo.png",
            width: 200,
            height: 200,
          ),
          const Padding(padding: EdgeInsets.only(top: 20)),
          Text(
            "Learn Flutter the fun Way!",
            style: GoogleFonts.lato(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: const Color.fromARGB(255, 237, 223, 252),
            ),
          ),
          const Padding(padding: EdgeInsets.only(top: 20)),
          OutlinedButton.icon(
              onPressed: startQuiz,
              style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.white, // foreground (text) color
                  textStyle: const TextStyle(fontSize: 16)),
              icon: const Icon(Icons.arrow_right_alt),
              label: const Text("Start Qiuz"))
        ],
      ),
    );
  }
}
