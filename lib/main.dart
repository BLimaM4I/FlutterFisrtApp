import 'package:flutter/material.dart';

import 'question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionsIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionsIndex += 1;
      if (_questionsIndex > 1) _questionsIndex = 0;
    });
    print(_questionsIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s or favorite animal?'
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('MyFirstApp'),
        ),
        body: Column(
          children: [
            Question(questions[_questionsIndex]),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: _answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: () => print('Answer 2 chosen!'),
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: () {
                print('Answer 3 chosen!');
              },
            ),
          ],
        ),
      ),
    );
  }
}
