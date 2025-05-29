import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: data['is_right'] as bool
                        ? const Color.fromARGB(200, 154, 240, 252)
                        : const Color.fromARGB(170, 252, 119, 174),
                    shape: BoxShape.circle,
                  ),
                  padding: EdgeInsets.all(12),
                  alignment: Alignment.center,
                  child: Text(
                    ((data['question_index'] as int) + 1).toString(),
                    textAlign: TextAlign.start,
                    style: GoogleFonts.lato(fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        data['question'] as String,
                        textAlign: TextAlign.start,
                        style: GoogleFonts.lato(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        data['answer'] as String,
                        textAlign: TextAlign.start,
                        style: GoogleFonts.lato(
                          color: data['is_right'] as bool
                              ? const Color.fromARGB(200, 154, 240, 252)
                              : const Color.fromARGB(170, 252, 119, 174),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 16),
                    ],
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
