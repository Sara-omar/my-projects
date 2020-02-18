import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultscore;
  final Function resetHandler;
  const Result(this.resultscore, this.resetHandler);
  String get resultphrase {
    String resultText = 'You did it!';
    if (resultscore <= 8) {
      resultText = 'You are awesome and innocent';
    } else if (resultscore <= 12) {
      resultText = 'Pretty likable';
    } else if (resultscore <= 16) {
      resultText = 'You are ... strange?!';
    } else {
      resultText = 'You are bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultphrase,
            style: TextStyle(
              fontSize: 36.0,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: resetHandler,
            child: Text('Restrat Quiz !'),
            textColor: Colors.blue,
          ),
        ],
      ),
    );
  }
}
