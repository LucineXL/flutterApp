import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  TitleText({Key key, this.title}) : super(key: key);
  final title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Text(
        title,
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}