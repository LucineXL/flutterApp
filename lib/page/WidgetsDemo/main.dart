import 'package:flutter/material.dart';
import '../../widgets/Router.dart';
import '../../widgets/Title.dart';

class WidgetsDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('WidgetsDemo'),
      ),
      body: new Scrollbar(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TitleText(title: '基本组件'),
                RouterPage(
                    new Router(name: '图片 Image 和 Icon', route: '/image')),
              ]),
        ),
      ),
    );
  }
}
