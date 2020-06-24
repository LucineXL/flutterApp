import 'package:flutter/material.dart';

class TextDemo extends StatelessWidget {

  @override
  Widget build (BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('flutter demo - Text')),
        body: Column(
          children: <Widget>[
            Text("Hello Flutter"),
            Text('Text Style',
              style: TextStyle(
                color: Colors.red,
              )
            ),
            Text.rich(TextSpan(children: [
              TextSpan(text: '我是Text rich', style: TextStyle(color: Colors.red)),
              TextSpan(text: '我是Text rich', style: TextStyle(color: Colors.yellow)),
              TextSpan(text: '我是Text rich', style: TextStyle(color: Colors.blue)),
            ])),
            RichText(text: TextSpan(children: [
              TextSpan(text: '我是RichText', style: TextStyle(color: Colors.red)),
              TextSpan(text: '我是RichText', style: TextStyle(color: Colors.yellow)),
              TextSpan(text: '我是RichText', style: TextStyle(color: Colors.blue)),
            ]),)
          ],
        ),
    );
  }
}