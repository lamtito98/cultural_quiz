import 'package:flutter/material.dart';
import 'custum_text.dart';
import 'package:cultural_quiz/models/questions.dart';
import 'dart:math';

class Quiz extends StatefulWidget
{
  @override
  _QuizState createState() => new _QuizState();


}



class _QuizState extends State<Quiz>
{

  Questions questions;

  List<Questions> QuestionsList = [
    new Questions('What is the most consumed drink in the world?', 'The tea', 'The Bier', 'The Coca'),
    new Questions('What French cyclist was nicknamed "the badger"?', 'Bernard Hinault', 'Raymond Poulidor', 'Laurent Fignon'),
    new Questions('What is the name of the mountain range that crosses Slovakia, Poland, Ukraine and Romania?', 'Carpathians', 'Dolomites', 'Alps'),
    new Questions('Who is the crew of the famous Apollo 11 mission that saw the first man on the moon?', 'Armstrong,Aldin,Collins', 'Armstrong,Aldin,,Young', 'Armstrong,Aldin,Gagarine'),
    new Questions('Which American athlete refused to greet Adolf Hitler at the Berlins Olympics in 1936?', 'Jesse Owens', 'Bob Beamon', 'Carl Lewis'),
    new Questions('What is Coco Chanel\'s real name?', 'Gabrielle', 'Murielle', 'Pimprenelle'),
    new Questions('Who is the first cyclist to have won 5 consecutive Tour de France?', 'Miguel Indurain', 'Jacques Anquetil', 'Eddy Merkx'),
    new Questions('How many planets does the solar system have?', '8', '10', '12'),
    new Questions('What year was the first microwave oven made?', '1946', '1960', '1974')
  ];


  int index= 0;
  int score = 0;
  int compteur = 0;
  int life = 5;


  void initState()
  {
    super.initState();
    final _random = new Random();
    QuestionsList.shuffle();
    questions = QuestionsList[index];
  }




  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        backgroundColor: const Color(0xff271f3a),
      appBar: new AppBar(
        backgroundColor: const Color(0xff271f3a),
        actions: <Widget> [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Text('${score}',
              style: TextStyle(
                  fontFamily: 'Segoe UI',
                  fontSize: 40.0,
                  color: const Color(0xfffffffa),
                  fontWeight: FontWeight.w700
              ),
              textAlign: TextAlign.center,
            ),

          ),

          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Icon(Icons.access_alarm)
          ),
        ],
          actionsIconTheme: IconThemeData(
            size: 40.0
          ),
      ),


      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget> [
            new Stack(
              children: <Widget> [

                new Container(
                  height: 240.0,
                  width: MediaQuery.of(context).size.width,
                  decoration: new BoxDecoration(
                      borderRadius: new BorderRadius.only(topLeft: Radius.circular(100),bottomLeft: Radius.circular(100),topRight: Radius.circular(100),bottomRight: Radius.circular(100)),
                      color: const Color(0xfffffffa)
                  ),

                  child: Center(
                    child: Text('${questions.question}',
                    style: TextStyle(
                      fontFamily: 'Segoe UI',
                      fontSize: 30.0,
                      color: const Color(0xff271f3a),
                      fontWeight: FontWeight.w400
                    ),
                      textAlign: TextAlign.center,
                    ),
                  ),

                )
              ],
            ),
            //Answer1
            new Center(
              child:
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget> [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(30.0,40.0,30.0,10.0),
                      child: GestureDetector(
                        onTap: (){
                          if(questions.answer2 == questions.goodAnswer)
                          {
                            debugPrint('Good');
                          score++;
                            debugPrint('Point: '+score.toString());
                            updateQuiz();
                          }
                          else {
                            debugPrint('false');
                            life --;
                            debugPrint('Life: '+life.toString());
                            updateQuiz();
                          }
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
                                    offset: Offset(0,3)
                                )
                              ]
                          ),
                          child: Center(
                            child:  Text('${questions.answer2}',
                              style: TextStyle(
                                  fontFamily: 'Segoe UI',
                                  fontSize: 25.0,
                                  color: const Color(0xff271f3a),
                                  fontWeight: FontWeight.w400
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),

                    ),
                  )


                ],
              ),
            ),

            //Answer 2
            new Center(
              child:
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget> [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(30.0,10.0,30.0,10.0),
                      child: GestureDetector(
                        onTap: (){
                         /* Navigator.push(context, MaterialPageRoute(
                              builder: (context)=> Setting()
                          ));*/
                          if(questions.goodAnswer == questions.goodAnswer)
                            {
                              debugPrint('Good');
                              score++;
                              debugPrint('Point: '+score.toString());
                              updateQuiz();

                            }
                          else {
                            debugPrint('false');
                            life --;
                            debugPrint('Life: '+life.toString());
                            updateQuiz();
                          }
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
                                    offset: Offset(0,3)
                                )
                              ]
                          ),
                          child: Center(
                            child:  Text(
                              '${questions.goodAnswer}',
                              style: TextStyle(
                                  fontFamily: 'Segoe UI',
                                  fontSize: 25.0,
                                  color: const Color(0xff271f3a),
                                  fontWeight: FontWeight.w400
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),

                    ),
                  )

                ],
              ),
            ),

            // Answer3

            new Center(
              child:
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget> [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(30.0,10.0,30.0,0.0),
                      child: GestureDetector(
                        onTap: (){
                         /* Navigator.push(context, MaterialPageRoute(
                              builder: (context)=> Quiz()
                          ));*/
                          if(questions.answer1 == questions.goodAnswer)
                          {
                            debugPrint('Good');
                            score++;
                            debugPrint('Point: '+score.toString());
                            updateQuiz();
                          }
                          else {
                            debugPrint('false');
                            life --;
                            debugPrint('Life: '+life.toString());
                            updateQuiz();
                          }
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
                                    offset: Offset(0,3)
                                )
                              ]
                          ),
                          child: Center(
                            child:  Text(
                              '${questions.answer1}',
                              style: TextStyle(
                                  fontFamily: 'Segoe UI',
                                  fontSize: 25.0,
                                  color: const Color(0xff271f3a),
                                  fontWeight: FontWeight.w400
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),

                    ),
                  )


                ],
              ),
            ),

          ],
        ),


      ),
    );
  }



  void updateQuiz(){
    if(index < QuestionsList.length)
      {
        index++;
        setState((){
          questions = QuestionsList[index];
        });
      }
  }
}
