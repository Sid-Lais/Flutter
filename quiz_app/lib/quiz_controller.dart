import 'dart:async';
import 'package:quiz_app/question.dart';

class QuizController {
  final List<Question> _questions = [
    Question(
      'What is the capital of France?',
      ['Paris', 'London', 'Berlin', 'Rome'],
      0,
    ),
    Question(
      'Who wrote "To Kill a Mockingbird"?',
      ['Harper Lee', 'J.K. Rowling', 'Stephen King', 'Mark Twain'],
      0,
    ),
    Question(
      'What is the chemical symbol for water?',
      ['H2O', 'CO2', 'N2', 'CH4'],
      0,
    ),
  ];

  final _questionStreamController = StreamController<Question>.broadcast();
  final _selectedOptionStreamController = StreamController<bool>.broadcast();

  int _currentIndex = 0;

  static final QuizController _instance = QuizController._internal();

  factory QuizController() {
    return _instance;
  }

  QuizController._internal();

  Stream<Question> get questionStream => _questionStreamController.stream;
  Stream<bool> get selectedOptionStream =>
      _selectedOptionStreamController.stream;

  String get correctAnswer => _questions[_currentIndex].options[0];
  String get selectedOption => _questions[_currentIndex].options[0];

  void nextQuestion() {
    if (_currentIndex < _questions.length - 1) {
      _currentIndex++;
      _questionStreamController.sink.add(_questions[_currentIndex]);
    } else {
      _currentIndex = 0; // Reset index if reached the end
      _questionStreamController.sink.add(_questions[_currentIndex]);
    }
  }

  void selectOption(String option) {
    bool isCorrect = option == _questions[_currentIndex].options[0];
    _selectedOptionStreamController.sink.add(isCorrect);
  }

  void dispose() {
    _questionStreamController.close();
    _selectedOptionStreamController.close();
  }
}
