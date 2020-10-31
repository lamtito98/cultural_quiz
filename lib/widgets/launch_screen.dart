import 'dart:async';

import 'package:flutter/material.dart';
import 'package:cultural_quiz/widgets/home.dart';

class LaunchScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new _LaunchScreenState();
  }

}



class _LaunchScreenState extends State<LaunchScreen>{


  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 4),(){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Home()),
      );

    });
  }



  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      backgroundColor: const Color(0xff271f3a),
      body: Center(
      child:  Column(
          children: <Widget> [
            new Container(
              child: Column(
                children: <Widget> [
                  Padding(
                    padding: const EdgeInsets.only(top: 250.0),
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
                  )
                ],
              ),
            ),
            new Center(
            child:
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget> [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0,right: 5.0,top: 10.0),
                    child: Image.asset('images/book.png',height: 90.0, width: 150.0,),
                  )
                ],
              ),
            )
          ],
        )

      ),

    );
}

}