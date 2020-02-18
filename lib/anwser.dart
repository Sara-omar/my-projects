import 'package:flutter/material.dart';

class Anwser extends StatelessWidget {
  final Function selectHandle;
  final String answer;
  Anwser(this.selectHandle, this.answer);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
          color: Colors.blue,
          textColor: Colors.white,
          child: Text(answer),
          onPressed: selectHandle),
    );
  }
}
