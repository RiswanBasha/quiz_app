import 'package:flutter/material.dart';
import 'package:quiz_app/result.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _qtns = const [
    {
      'qtnText': 'What\'s you fav colour ?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 6},
        {'text': 'Blue', 'score': 4},
        {'text': 'White', 'score': 2}
      ],
    },
    {
      'qtnText': 'What\'s you fav Food ?',
      'answers': [
        {'text': 'Biriyani', 'score': 10},
        {'text': 'Roti', 'score': 2},
        {'text': 'Fried Rice', 'score': 4},
        {'text': 'Shawarma', 'score': 6}
      ],
    },
    {
      'qtnText': 'What\'s you fav Animal ?',
      'answers': [
        {'text': 'Dog', 'score': 10},
        {'text': 'Cat', 'score': 6},
        {'text': 'Elephant', 'score': 4},
        {'text': 'Lion', 'score': 2}
      ],
    },
    {
      'qtnText': 'Who\'s you fav Actor ?',
      'answers': [
        {'text': 'Vijay', 'score': 10},
        {'text': 'Dhanush', 'score': 6},
        {'text': 'Surya', 'score': 4},
        {'text': 'Ajith', 'score': 2}
      ],
    },
  ];
  var _qtnIndex = 0;
   var _totalScore = 0;

  void _resetQuiz(){
    setState(() {
        _qtnIndex = 0;
       _totalScore = 0;
    });
   
  }
  void _answerQuestion(int score) {
    _totalScore +=score;
    setState(() {
      _qtnIndex = _qtnIndex + 1;
    });
    if (_qtnIndex < _qtns.length) {
      print('We Have more questions');
    } else {
      print('Something went wrong');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz'),
          backgroundColor: Colors.blue,
        ),
        body: _qtnIndex < _qtns.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                qtns: _qtns,
                qtnIndex: _qtnIndex
                )
            : Result(_totalScore,_resetQuiz),
      ),
    );
  }
}
