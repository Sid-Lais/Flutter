import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quiz_app/quiz_controller.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final quizController = QuizController(); // Instantiate QuizController

    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            StreamBuilder<String>(
              stream: quizController.questionStream,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Text(snapshot.data!);
                } else {
                  return const CircularProgressIndicator();
                }
              },
            ),
            const SizedBox(height: 20),
            StreamBuilder<List<String>>(
              stream: quizController.optionsStream,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Column(
                    children: snapshot.data!.map((option) {
                      return OptionButton(
                          option: option, quizController: quizController);
                    }).toList(),
                  );
                } else {
                  return const CircularProgressIndicator();
                }
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => quizController.nextQuestion(),
              child: const Text('Next Question'),
            ),
          ],
        ),
      ),
    );
  }
}

class OptionButton extends StatelessWidget {
  final String option;
  final QuizController quizController;

  const OptionButton(
      {super.key, required this.option, required this.quizController});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => quizController.selectOption(option),
      child: Text(option),
    );
  }
}

class QuizController {
  final _questionStreamController = StreamController<String>();
  final _optionsStreamController = StreamController<List<String>>();

  Stream<String> get questionStream => _questionStreamController.stream;
  Stream<List<String>> get optionsStream => _optionsStreamController.stream;

  void nextQuestion() {
    // Logic to fetch the next question and options
    const question = 'What is the capital of France?';
    final options = ['Paris', 'Berlin', 'London', 'Rome'];
    _questionStreamController.add(question);
    _optionsStreamController.add(options);
  }

  void selectOption(String option) {
    // Logic to handle option selection
    print('Selected option: $option');
  }

  void dispose() {
    _questionStreamController.close();
    _optionsStreamController.close();
  }
}
