import 'package:flutter/material.dart';

class CustomText extends Text{
  CustomText( String data, {color : const Color(0xfffff9f9), textAlign: TextAlign.center, fontWeight: FontWeight.w700}):

      super(data,
        textAlign: textAlign,
        style: new TextStyle(color: color,fontWeight: fontWeight)
        );

}
