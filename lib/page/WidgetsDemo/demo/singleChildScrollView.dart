import 'package:flutter/material.dart';

class SingleChildScrollViewDemo extends StatelessWidget {

  String str = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
  @override
  Widget build (BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('flutter demo - 滚动组件')),
        body: Scrollbar(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(20),
            child: Center(
              child: Column(
                //动态创建一个List<Widget>
                children: str.split("")
                  //每一个字母都用一个Text显示,字体为原来的两倍
                  .map((c) => Text(c, textScaleFactor: 2.0,))
                  .toList()
              ),
            ),
          ),
        ),
    );
  }
}