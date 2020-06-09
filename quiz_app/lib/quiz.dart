import 'package:flutter/material.dart';
import './qtns.dart';
import './answers.dart';
class Quiz extends StatelessWidget {
  final List<Map<String,Object>> qtns;
  final Function answerQuestion;
  final int qtnIndex;
  Quiz(
    {
      @required this.answerQuestion,
      @required this.qtns,
      @required this.qtnIndex
      }
      );
  @override
  Widget build(BuildContext context) {
    return Column(
          children: <Widget>[
            Qtns(
              qtns[qtnIndex]['qtnText']
            ),
            ...(qtns[qtnIndex]['answers']as List<Map<String,Object>>).map((answer){
              return Answer(()=>answerQuestion(answer['score']),answer['text']);
            }).toList()    
            ],
        );
  }
}