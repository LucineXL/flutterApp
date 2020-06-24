import 'package:flutter/material.dart';

class ImageIconDemo extends StatelessWidget {

  @override
  Widget build (BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('flutter demo - Text')),
        body: Column(children: <Widget>[
          Text('img  本地文件'),
          Image.asset("images/dog.jpg",fit: BoxFit.cover),
          Text('img  网络文件'),
          Image.network("https://www.baidu.com/img/bd_logo1.png",fit: BoxFit.cover),
          Text('Icon'),
          Icon(
            Icons.android,
            size: 50.0,
            color: Colors.green,
          )
        ],)
    );
  }
}