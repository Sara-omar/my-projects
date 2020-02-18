import 'package:flutter/material.dart';
import 'quiz.dart';
import 'result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final questions = const [
    {
      'question': 'What\'s your favorite Animal ?',
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snake', 'score': 11},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 9},
      ],
    },
    {
      'question': 'What\'s your favorite color ?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'question': 'What\'s your favorite teacher ?',
      'answers': [
        {'text': 'Sara', 'score': 1},
        {'text': 'Mai', 'score': 1},
        {'text': 'Nour', 'score': 1},
        {'text': 'Ahmed', 'score': 1},
      ],
    },
  ];
  var index = 0;
  var totalscore=0;
  void answerQuestion(int score) {
    totalscore += score;
    setState(
      () {
        index = index + 1;
      },
    );
  }

  void resetQuiz() {
    setState(
      () {
        index = 0;
        totalscore = 0;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'My First App',
          ),
        ),
        body: index < questions.length
            ? Quiz(questions, answerQuestion, index)
            : Result(totalscore, resetQuiz),
      ),
    );
  }
}
