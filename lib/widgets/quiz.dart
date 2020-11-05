import 'dart:async';
import 'package:flutter/material.dart';
import 'package:cultural_quiz/models/questions.dart';
import 'package:cultural_quiz/widgets/custum_text.dart';

class Quiz extends StatefulWidget {
  @override
  _QuizState createState() => new _QuizState();
}

class _QuizState extends State<Quiz> {
  Questions questions;

  List<Questions> questionsList = [
    new Questions('What is the most consumed drink in the world?', 'The tea',
        'The Bier', 'The Coca'),
    new Questions('What French cyclist was nicknamed "the badger"?',
        'Bernard Hinault', 'Raymond Poulidor', 'Laurent Fignon'),
    new Questions(
        'What is the name of the mountain range that crosses Slovakia, Poland, Ukraine and Romania?',
        'Carpathians',
        'Dolomites',
        'Alps'),
    new Questions(
        'Who is the crew of the famous Apollo 11 mission that saw the first man on the moon?',
        'Armstrong,Aldin,Collins',
        'Armstrong,Aldin,,Young',
        'Armstrong,Aldin,Gagarine'),
    new Questions(
        'Which American athlete refused to greet Adolf Hitler at the Berlins Olympics in 1936?',
        'Jesse Owens',
        'Bob Beamon',
        'Carl Lewis'),
    new Questions('What is Coco Chanel\'s real name?', 'Gabrielle', 'Murielle',
        'Pimprenelle'),
    new Questions(
        'Who is the first cyclist to have won 5 consecutive Tour de France?',
        'Miguel Indurain',
        'Jacques Anquetil',
        'Eddy Merkx'),
    new Questions(
        'How many planets does the solar system have?', '8', '10', '12'),
    new Questions(
        'What year was the first microwave oven made?', '1946', '1960', '1974'),
  ];

  int index = 0;
  int score = 0;
  int timer = 10;
  String showTimer = '10';
  bool cancelTimer = false;

  void initState() {
    super.initState();
    questionsList.shuffle();
    questions = questionsList[index];
    startTimer();
  }

  void startTimer() async {
    const second = Duration(seconds: 1);
    Timer.periodic(second, (Timer t) {
      setState(() {
        if (timer < 1) {
          t.cancel();
          updateQuiz();
        } else if (cancelTimer == true) {
          t.cancel();
        } else {
          timer = timer - 1;
        }
        showTimer = timer.toString();
      });
    });
  }

  void updateQuiz() {
    cancelTimer = false;
    timer = 10;
    if (index < questionsList.length) {
      index++;
      setState(() {
        questions = questionsList[index];
      });
      startTimer();
    } else {
      cancelTimer = true;
      showMessage();
    }
  }

  void answer(String good) async {
    bool bestAnswer = (good == questions.goodAnswer);
    if (bestAnswer) {
      debugPrint('good');
      score++;
      updateQuiz();
    } else {
      debugPrint('false');
      updateQuiz();
    }
  }

  @override
  Widget build(BuildContext context) => new Scaffold(
        backgroundColor: const Color(0xff271f3a),
        appBar: new AppBar(
          backgroundColor: const Color(0xff271f3a),
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 100.0),
              child: new CustomText('Score: $score',
                  fontSize: 25.0, color: const Color(0xfffffffa)),
            ),
            Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: Text('$showTimer' + 's')),
          ],
          actionsIconTheme: IconThemeData(size: 40.0),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              new Stack(
                children: <Widget>[
                  new Container(
                    height: 240.0,
                    width: MediaQuery.of(context).size.width,
                    decoration: new BoxDecoration(
                        borderRadius: new BorderRadius.only(
                            topLeft: Radius.circular(100),
                            bottomLeft: Radius.circular(100),
                            topRight: Radius.circular(100),
                            bottomRight: Radius.circular(100)),
                        color: const Color(0xfffffffa)),
                    child: Center(
                        child: new CustomText('${questions.question}',
                            fontSize: 29.0)),
                  )
                ],
              ),
              //Answer1
              buttonAnswer(questions.answer2),
              //Answer 2
              buttonAnswer(questions.goodAnswer),
              // Answer3
              buttonAnswer(questions.answer1)
            ],
          ),
        ),
      );

  Future<Null> showMessage() async {
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext buildContext) {
          return new AlertDialog(
            title: new CustomText('score $score/$index'),
            content: Image.asset(
              'images/animated.gif',
              height: 100.0,
              width: 150.0,
            ),
          );
        });
  }

  Center buttonAnswer(String data) {
    return new Center(
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(30.0, 20, 30.0, 0.0),
              child: GestureDetector(
                onTap: () {
                  answer(data);
                },
                child: new Container(
                  height: 60.0,
                  decoration: new BoxDecoration(
                      color: const Color(0xfffffffa),
                      borderRadius: new BorderRadius.circular(100.0),
                      boxShadow: [
                        BoxShadow(
                            color: const Color(0xff271f3a),
                            spreadRadius: 1.0,
                            blurRadius: 1.0,
                            offset: Offset(0, 3))
                      ]),
                  child: Center(
                    child: new CustomText(
                      '$data',
                      color: const Color(0xff271f3a),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
