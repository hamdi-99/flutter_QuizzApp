import 'package:flutter/material.dart';
import 'quiz.dart';
import 'result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color ?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1}
      ]
    },
    {
      'questionText': 'What\'s your favorite animal ?',
      'answers': [
        {'text': 'Snake', 'score': 10},
        {'text': 'Lion', 'score': 5},
        {'text': 'Elephant', 'score': 3},
        {'text': 'Rabbit', 'score': 1}
      ]
    },
    {
      'questionText': 'Who\'s your favorite instructor ?',
      'answers': [
        {'text': 'Hamdi', 'score': 3},
        {'text': 'Hamdi', 'score': 3},
        {'text': 'Hamdi', 'score': 3},
        {'text': 'Also Hamdi', 'score': 3}
      ]
    }
  ];
  var _totalScore = 0;
  var _questionIndex = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });

  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });
    if (_questionIndex < _questions.length) {
      print('we have more questions !');
    }
    //print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My first App'),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(_answerQuestion, _questions, _questionIndex)
              : Result(_resetQuiz , _totalScore)),
    );
  }
}
