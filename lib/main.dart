import "package:flutter/material.dart";

import "./quiz.dart";
import "./result.dart";

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      "questionText": "What\'s your favorite color?",
      "answers": [
        {"text": "Red", "score": 5},
        {"text": "Green", "score": 2},
        {"text": "Black", "score": 10},
        {"text": "White", "score": 1}
      ]
    },
    {
      "questionText": "What\'s your favorite animal?",
      "answers": [
        {"text": "Dog", "score": 5},
        {"text": "Cat", "score": 2},
        {"text": "Bird", "score": 10},
        {"text": "Rabbit", "score": 1}
      ]
    },
    {
      "questionText": "What\'s your favorite food?",
      "answers": [
        {"text": "Pizza", "score": 5},
        {"text": "Cookie", "score": 2},
        {"text": "Borsch", "score": 10},
        {"text": "Fries", "score": 1}
      ]
    },
  ];

  var _questionIndex = 0;
  int _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestions(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text("My first app")),
            body: _questionIndex < _questions.length
                ? Quiz(
                    answerQuestion: _answerQuestions,
                    questionIndex: _questionIndex,
                    questions: _questions,
                  )
                : Result(_totalScore, _resetQuiz)));
  }
}
 