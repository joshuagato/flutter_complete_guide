import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/result.dart';

import './quiz.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  // MyApp({super.key});

  var _questionIndex = 0;

  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': ['Black', 'Red', 'Green', 'White']
    },
    {
      'questionText': "What's your favorite animal?",
      'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion']
    },
    {
      'questionText': "Who's your favorite instructor?",
      'answers': ['Josh', 'Josh', 'Josh', 'Josh']
    }
  ];

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                questionIndex: _questionIndex,
                answerQuestion: _answerQuestion,
              )
            : const Result(),
      ),
    );
  }
}
