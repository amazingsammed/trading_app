import 'package:flutter/material.dart';

class AppbarW extends StatelessWidget {
  String title;
  AppbarW({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Text(title),
    );
  }
}
