import 'package:flutter/material.dart';
import 'custum_text.dart';

class Setting extends StatefulWidget
{
  @override
  _SettingState createState() => new _SettingState();
}


class _SettingState extends State<Setting>
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      backgroundColor: const Color(0xff271f3a),
      appBar: new AppBar(
        backgroundColor: const Color(0xff271f3a),
      ),
    );
  }
}