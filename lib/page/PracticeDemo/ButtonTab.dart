import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new GestureDetector(
        onTap: () {
          final snackBar = new SnackBar(content: new Text("Tap"));
          Scaffold.of(context).showSnackBar(snackBar);
        },
        child: new Container(
          padding: new EdgeInsets.all(12.0),
          decoration: new BoxDecoration(
            color: Theme.of(context).buttonColor,
            borderRadius: new BorderRadius.circular(8.0),
          ),
          child: new Text('My Button'),
        ),
      ),
    );
  }
}
class ButtonTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('button Tab'),
      ),
      body: new MyButton()
    );
  }
}