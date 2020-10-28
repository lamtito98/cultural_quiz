import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';

class iconBtnAnswer extends StatelessWidget {
  iconBtnAnswer({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Pinned.fromSize(
          bounds: Rect.fromLTWH(0.0, 0.0, 292.0, 68.0),
          size: Size(292.0, 68.0),
          pinRight: true,
          pinTop: true,
          fixedWidth: true,
          fixedHeight: true,
          child:
              // Adobe XD layer: 'Btn Answer' (shape)
              Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(26.0),
              color: const Color(0xff271f3a),
              border: Border.all(width: 5.0, color: const Color(0xffeaeaf1)),
            ),
          ),
        ),
      ],
    );
  }
}
