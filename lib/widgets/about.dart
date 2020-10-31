import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class About extends StatefulWidget
{
  @override
  _AboutState createState() => new _AboutState();
}


class _AboutState extends State<About>
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      backgroundColor: const Color(0xff271f3a),
      appBar: new AppBar(
        backgroundColor: const Color(0xff271f3a),
      ),

      body: Center(
        child: Column(
          children: <Widget> [
            new Stack(
              children: <Widget> [

                Container(
                  child: Column(

                    children: <Widget> [
                      Padding(
                          padding: const EdgeInsets.fromLTRB(0.0,20.0,0.0,0.0),
                          child: CircleAvatar(
                            backgroundImage: AssetImage('images/lam.jpg'),
                            radius:70.0,
                          ),
                      ),

                    ],
                  ),
                )
              ],
            ),

              Container(
                child: Column(
                  children: <Widget> [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10.0,10.0,10.0,10.0),
                      child: Text(
                        'I am Lamson Lamour Estimond creator of this application'
                            ' I am a programmer with a lot of passions for development '
                            'I have programmed this app with one of the best languages ​​of this moment (Flutter, dart) that I learned on my own.'
                            ' If you like it, it will be nice to leave me a review and stay connected with me on social networks for updates.',
                        style: TextStyle(
                            fontFamily: 'Segoe UI',
                            fontSize: 22.5,
                            color: const Color(0xfffffffa),
                            fontWeight: FontWeight.w400
                        ),
                        textAlign: TextAlign.start,
                      ),

                    ),
                  ],
                ),
              ),

            new Center(
              child:
              new Row(
                mainAxisAlignment: MainAxisAlignment.center ,
                children: <Widget> [
                  Expanded(
                   child: Padding(
                      padding: const EdgeInsets.only(left: 10.0,right: 5.0,top: 10.0),
                      child: GestureDetector(
                        onTap:(){
                          openUrl('https://www.facebook.com/');
                        },
                        child: new Container(
                          child: Image.asset('images/facebook.png',height: 40.0, width: 50.0,),
                        ),

                      ),

                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 0.0,right: 5.0,top: 10.0),
                      child: GestureDetector(
                        onTap:(){
                          openUrl('https://www.instagram.com/');
                        },
                        child: new Container(
                          child: Image.asset('images/instagram.png',height: 40.0, width: 50.0,),
                        ),

                      ),

                    ),
                  ),

                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 0.0,right: 5.0,top: 10.0),
                      child: GestureDetector(
                        onTap:(){
                          openUrl('https://www.linkedin.com/');
                        },
                        child: new Container(
                          child: Image.asset('images/linkedin.png',height: 40.0, width: 50.0,),
                        ),

                      ),

                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 0.0,right: 5.0,top: 10.0),
                      child: GestureDetector(
                        onTap:(){
                          openUrl('https://www.gmail.com/');
                        },
                        child: new Container(
                          child: Image.asset('images/gmail.png',height: 40.0, width: 50.0,),
                        ),

                      ),

                    ),
                  ),
                ],
              )
            )
          ],
        ),
      ),

    );

  }


  openUrl(String url){
     launch(url);
  }
}