import 'package:flutter/material.dart';
import 'package:cultural_quiz/widgets/quiz.dart';
import 'package:cultural_quiz/widgets/setting.dart';
import 'package:cultural_quiz/widgets/about.dart';

class Home extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    return new _Home();
  }

}



class _Home extends State<Home> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffffffa),
      body: Center(
        child: Column(
          children: <Widget> [
            new Stack(
              children: <Widget> [
                new Container(
                  height: 300.0,
                  width: MediaQuery.of(context).size.width,
                  decoration:  new BoxDecoration(
                    borderRadius: new BorderRadius.only(bottomLeft: Radius.circular(100),bottomRight: Radius.circular(100)),
                    color: const Color(0xff271f3a),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.8),
                        spreadRadius: 10,
                        blurRadius: 10,
                        offset: Offset(0,3)
                      )
                    ]
                  ),
                  child: Center(
                    child: Text(
                        "Cultural Quiz",
                    style: TextStyle(
                      fontFamily: 'Segoe UI',
                      fontSize: 50.0,
                      color: const Color(0xfffffffa),
                      fontWeight: FontWeight.w700
                    ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
              ],
            ),
            new Center(
                child:
                new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget> [
                    Expanded(
                        child: Padding(
                            padding: const EdgeInsets.fromLTRB(30.0,75.0,30.0,10.0),
                          child: GestureDetector(
                            onTap: (){
                              Navigator.of(context).push(_createRoute(Quiz()));
                            },
                            child: new Container(
                              height: 60.0,
                              decoration: new BoxDecoration(
                                  color: const Color(0xff271f3a),
                                  borderRadius: new BorderRadius.circular(100.0),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.withOpacity(0.1),
                                        spreadRadius: 2.0,
                                        blurRadius: 0.9,
                                        offset: Offset(0,1)
                                    )
                                  ]
                              ),
                              child: new Text(

                                "Start Game",
                                style: TextStyle(
                                    fontFamily: 'Segoe UI',
                                    fontSize: 50.0,
                                    color: const Color(0xfffffffa),
                                    fontWeight: FontWeight.w400
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),

                        ),
                    )


                  ],
                ),
            ),
            //btn Setting
            new Center(
              child:
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget> [
                  Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(30.0,5.0,30.0,10.0),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.of(context).push(_createRoute(Setting()));
                          },
                          child: new Container(
                            height: 60.0,
                            decoration: new BoxDecoration(
                                color: const Color(0xff271f3a),
                                borderRadius: new BorderRadius.circular(100.0),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.withOpacity(0.1),
                                      spreadRadius: 2.0,
                                      blurRadius: 0.9,
                                      offset: Offset(0,1)
                                  )
                                ]
                            ),
                            child: new Text(

                              "Setting",
                              style: TextStyle(
                                  fontFamily: 'Segoe UI',
                                  fontSize: 50.0,
                                  color: const Color(0xfffffffa),
                                  fontWeight: FontWeight.w400
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      )
                  )


                ],
              ),
            ),

            //btn About
            new Center(
              child:
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget> [
                  Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(30.0,5.0,30.0,0.0),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.of(context).push(_createRoute(About()));
                          },
                          child: new Container(
                            height: 60.0,
                            decoration: new BoxDecoration(
                                color: const Color(0xff271f3a),
                                borderRadius: new BorderRadius.circular(100.0),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.withOpacity(0.1),
                                      spreadRadius: 2.0,
                                      blurRadius: 0.9,
                                      offset: Offset(0,1)
                                  )
                                ]
                            ),
                            child: new Text(

                              "About",
                              style: TextStyle(
                                  fontFamily: 'Segoe UI',
                                  fontSize: 50.0,
                                  color: const Color(0xfffffffa),
                                  fontWeight: FontWeight.w400
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      )
                  )


                ],
              ),
            )
          ],
        ),
      ),
    );
  }


  Route _createRoute(var route){
    return PageRouteBuilder(
      transitionDuration: Duration(milliseconds: 650),
        pageBuilder: (context, animation, secondaryAnimation) =>route,
        transitionsBuilder: (context, animation, animationTime, child){

          var begin = Offset(0.0, 1.0);
          var end = Offset.zero;
          var curve = Curves.ease;

          var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

          return SlideTransition(
            position: animation.drive(tween),
            child: child
          );
        },
    );
  }


}