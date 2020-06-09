import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore >= 35) {
      resultText = 'You are Awesome and Innocent!';
    } else if (resultScore >= 30) {
      resultText = 'Pretty...Likeable';
    } else if (resultScore >= 25) {
      resultText = 'You are Strange ....?';
    } else if (resultScore >= 15) {
      resultText = 'You are not so Bad, not so Good!';
    } else {
      resultText = 'You are so bad.....!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
       
        children: <Widget>[
          Card(
           margin: EdgeInsets.all(25),
            child: Column(
              children: <Widget>[
                Text(
                  resultPhrase,
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                RaisedButton(
                    child: Text(
                      'Back',
                    ),
                    onPressed: resetHandler)
              ],
            ),
          )
        ],
      ),
    );
  }
}
