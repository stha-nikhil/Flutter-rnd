import 'package:flutter/material.dart';

import 'drawer.dart';
import 'quiz.dart';
import 'style.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalPoint = 0;

  static const questions = [
    {
      'questionText': 'A compiler transforms _____',
      'answers': [
        {'answerText': 'Code', 'points': 1},
        {'answerText': 'Swift', 'points': 0},
        {'answerText': 'Braces', 'points': 0}
      ]
    },
    {
      'questionText': 'Which of these is a programming language?',
      'answers': [
        {'answerText': 'HTML', 'points': 1},
        {'answerText': 'Python', 'points': 0}
      ]
    }
  ];

  void _answer(int points) {
    _totalPoint += points;
    setState(() {
      _questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Demo App'),
        ),
        drawer: const DrawerTheme(
          data: drawerStyle,
          child: AppDrawer(),
        ),
        body: Quiz(questions, _questionIndex, _answer, _totalPoint),
      ),
      theme: ThemeData(
        primarySwatch: Colors.teal,
        scaffoldBackgroundColor: Colors.grey.shade100,
        appBarTheme: const AppBarTheme(
          titleTextStyle: appBarTextStyle,
        ),
        textTheme: const TextTheme(
          titleMedium: questionTextStyle,
          titleSmall: cardTextStyle,
          labelMedium: answerTextStyle,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: elevatedButtonStyle.style,
        ),
        drawerTheme: drawerStyle,
        cardTheme: cardStyle,
      ),
    );
  }
}
