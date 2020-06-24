import 'package:flutter/material.dart';

class StackDemo extends StatelessWidget {

  @override
  Widget build (BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('flutter demo - Text')),
        body: //通过ConstrainedBox来确保Stack占满屏幕
          ConstrainedBox(
            constraints: BoxConstraints.expand(),
            child: Stack(
              alignment: Alignment.center, //指定未定位或部分定位widget的对齐方式
              // fit: StackFit.expand, //未定位widget占满Stack整个空间
              children: <Widget>[
                Container(child: Text("Hello world",style: TextStyle(color: Colors.white)),
                  color: Colors.red,
                ),
                Positioned(
                  left: 18.0,
                  child: Text("I am Jack"),
                ),
                Positioned(
                  top: 18.0,
                  child: Text("Your friend"),
                )
              ],
            ),
          )
    );
  }
}