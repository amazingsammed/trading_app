import 'package:flutter/material.dart';

class Maintext extends StatelessWidget {
  String text;
  Maintext({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text);
  }
}
