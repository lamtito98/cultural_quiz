import 'package:flutter/material.dart';

class CustomText extends Text {
  CustomText(String data,
      {color: const Color(0xff271f3a),
      textAlign: TextAlign.center,
      fontWeight: FontWeight.w400,
      fontFamily: 'Sergoe UI',
      fontSize: 25.0})
      : super(data,
            textAlign: textAlign,
            style: new TextStyle(
                color: color,
                fontWeight: fontWeight,
                fontFamily: fontFamily,
                fontSize: fontSize));
}
