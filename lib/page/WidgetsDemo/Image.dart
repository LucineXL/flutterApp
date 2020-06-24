import 'package:flutter/material.dart';
import '../../widgets/Title.dart';

class ImageIconDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('flutter demo - Text')),
      body: SingleChildScrollView(
        child: new Center(
          child: new Column(
            children: <Widget>[
              TitleText(title: 'img  本地文件'),
              Image.asset("images/dog.jpg", width: 200),
              TitleText(title: 'img  网络文件'),
              Image.network("https://www.baidu.com/img/bd_logo1.png",
                  fit: BoxFit.cover),
              TitleText(title: 'Icon'),
              Icon(
                Icons.android,
                size: 50.0,
                color: Colors.green,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
