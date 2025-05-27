import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  final logoImage = 'assets/images/quiz-logo.png';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(logoImage, width: 300),
          const SizedBox(height: 80),
          const Text(
            'Teste seus conhecimentos!',
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
          const SizedBox(height: 80),
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            child: Text('Iniciar'),
          ),
        ],
      ),
    );
  }
}
