import 'package:flutter/material.dart';
import 'anwser.dart';
import 'Question.dart';
class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int index;
  Quiz(this.questions, this.answerQuestion, this.index);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(
          questions[index]['question'],
        ),
        ...(questions[index]['answers'] as List<Map<String,Object>>).map(
          (answer) {
            return Anwser(()=>answerQuestion(answer['score']), answer['text']);
          },
        ).toList()
      ],
    );
  }
}