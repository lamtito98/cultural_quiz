import 'package:flutter/material.dart';
import 'package:cultural_quiz/widgets/home.dart';

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Cultural Quiz',
      theme: new ThemeData(
          primarySwatch:  Colors.indigo,
              fontFamily: 'Segoe UI'
      ),
      debugShowCheckedModeBanner: false,

      home: new Home(),
    );
  }
}