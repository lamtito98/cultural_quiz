import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class iconStartGame extends StatelessWidget {
  iconStartGame({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff271f3a),
      body: Stack(
        children: <Widget>[
          Container(),
          Container(),
          Container(),
          Transform.translate(
            offset: Offset(0.0, 82.0),
            child:
                // Adobe XD layer: 'Question' (group)
                SizedBox(
              width: 375.0,
              height: 319.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 375.0, 319.0),
                    size: Size(375.0, 319.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child:
                        // Adobe XD layer: 'Presentation' (shape)
                        Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(102.0),
                        color: const Color(0xffffffff),
                        border: Border.all(
                            width: 1.0, color: const Color(0xff271f3a)),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(33.0, 119.0, 310.0, 108.0),
                    size: Size(375.0, 319.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    fixedHeight: true,
                    child: Text(
                      'What is the most consumed drink in the world after water?',
                      style: TextStyle(
                        fontFamily: 'Segoe UI',
                        fontSize: 25,
                        color: const Color(0xff271f3a),
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(85.0, 30.0, 206.0, 37.0),
                    size: Size(375.0, 319.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    fixedHeight: true,
                    child: Text(
                      'Questions: 17/78',
                      style: TextStyle(
                        fontFamily: 'Segoe UI',
                        fontSize: 25,
                        color: const Color(0xff271f3a),
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Adobe XD layer: 'header' (group)
          SizedBox(
            width: 375.0,
            height: 82.0,
            child: Stack(
              children: <Widget>[
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(0.0, 0.0, 375.0, 82.0),
                  size: Size(375.0, 82.0),
                  pinLeft: true,
                  pinRight: true,
                  pinTop: true,
                  pinBottom: true,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.0),
                      color: const Color(0xff271f3a),
                      border: Border.all(
                          width: 1.0, color: const Color(0xff271f3a)),
                    ),
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(250.0, 25.0, 93.0, 32.0),
                  size: Size(375.0, 82.0),
                  pinRight: true,
                  fixedWidth: true,
                  fixedHeight: true,
                  child: Text(
                    'Points:10',
                    style: TextStyle(
                      fontFamily: 'Segoe UI',
                      fontSize: 20,
                      color: const Color(0xfffff9f9),
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(22.0, 29.6, 51.1, 22.8),
                  size: Size(375.0, 82.0),
                  pinLeft: true,
                  fixedWidth: true,
                  fixedHeight: true,
                  child: SvgPicture.string(
                    _svg_bs2jh,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_bs2jh =
    '<svg viewBox="22.0 29.6 51.1 22.8" ><path transform="matrix(-1.0, 0.0, 0.0, -1.0, 76.14, 60.43)" d="M 54.13603973388672 19.42437744140625 L 43.37055587768555 8 L 43.37055587768555 16.56828308105469 L 3.000000953674316 16.56828308105469 L 3.000000953674316 22.28047180175781 L 43.37055587768555 22.28047180175781 L 43.37055587768555 30.8487548828125 L 54.13603973388672 19.42437744140625 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
