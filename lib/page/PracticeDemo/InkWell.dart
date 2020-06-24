import 'package:flutter/material.dart';

class MyWell extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new InkWell(
      onTap: () {
        Scaffold.of(context).showSnackBar(new SnackBar(
          content: new Text('Tap'),
        ));
      },
      child: new Container(
        padding: new EdgeInsets.all(12.0),
        child: new Text('Flat Button'),
      ),
    );
  }
}
class InkWellDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('InkWell'),
        ),
        body: new Center(child: new MyWell()),
    );
  }
}