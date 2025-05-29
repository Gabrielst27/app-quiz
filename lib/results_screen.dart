import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_summary.dart';

class ResultsScreen extends StatefulWidget {
  const ResultsScreen({super.key, required this.answers});

  final List<String> answers;

  @override
  State<StatefulWidget> createState() {
    return _ResultScreenState();
  }
}

class _ResultScreenState extends State<ResultsScreen> {
  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < widget.answers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'answer': widget.answers[i],
        'correct_answer': questions[i].answers[0],
        'is_right': widget.answers[i] == questions[i].answers[0],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final correctQuestions = summaryData
        .where((data) => data['is_right'] == true)
        .length;
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Você acertou $correctQuestions de ${questions.length} questões!',
              textAlign: TextAlign.center,
              style: GoogleFonts.lato(
                color: const Color.fromARGB(200, 255, 255, 255),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 32),
            QuestionsSummary(summaryData: getSummaryData()),
            const SizedBox(height: 32),
            OutlinedButton.icon(
              onPressed: () {},
              style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
              icon: Icon(Icons.refresh_sharp),
              label: Text('Tentar novamente'),
            ),
          ],
        ),
      ),
    );
  }
}
