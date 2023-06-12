import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz/data/question.dart';
import 'package:quiz/question_summary/question_summary.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({
    super.key,
    required this.choosesAnswers,
    required this.restartQuiz,
  });
  final List<String> choosesAnswers;
  final void Function() restartQuiz;
  List<Map<String, Object>> get summaryData {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < choosesAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'questions': question[i].text,
        'correct_answer': question[i].answer[0],
        'user_answer': choosesAnswers[i],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final numTotalAnswer = choosesAnswers.length;
    final numCorrectAnswer = summaryData
        .where((data) => data['user_answer'] == data['correct_answer'])
        .length;
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            "You answered $numCorrectAnswer out of $numTotalAnswer question correctly!,",
            style: GoogleFonts.lato(
              color: const Color.fromARGB(255, 230, 200, 253),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 30,
          ),
          QuestionSummary(summaryData),
          const SizedBox(
            height: 30,
          ),
          TextButton.icon(
            onPressed: restartQuiz,
            style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white, // foreground (text) color
                textStyle: const TextStyle(fontSize: 16)),
            icon: const Icon(Icons.refresh),
            label: const Text("Restart Quiz"),
          )
        ]),
      ),
    );
  }
}
