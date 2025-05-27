import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;
  final logoImage = 'assets/images/quiz-logo.png';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            logoImage,
            width: 300,
            color: const Color.fromARGB(127, 255, 255, 255),
          ),
          const SizedBox(height: 80),
          const Text(
            'Teste seus conhecimentos!',
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
          const SizedBox(height: 80),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            icon: Icon(Icons.arrow_right_alt),
            label: Text('Iniciar'),
          ),
        ],
      ),
    );
  }
}
