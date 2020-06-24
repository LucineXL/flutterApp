import 'package:flutter/material.dart';
import './widgets/Router.dart';

import './page/PracticeDemo/main.dart';
import './page/WidgetsDemo/main.dart';

import './page/PracticeDemo/RandomText1.dart'; // RandomBodyStateLess
import './page/PracticeDemo/RandomText2.dart'; // RandomBodyStateful
import './page/PracticeDemo/RandomList.dart'; // RandomList
import './page/PracticeDemo/ShopCart.dart'; // ShopCart
import './page/PracticeDemo/Counter.dart'; // Counter
import './page/PracticeDemo/ListPage.dart'; // ListPage
import './page/PracticeDemo/GridList.dart'; // GridList
import './page/PracticeDemo/ButtonTab.dart'; // ButtonTab
import './page/PracticeDemo/InkWell.dart'; // InkWellDemo
import './page/PracticeDemo/DismissDemo.dart'; // DismissDemo

import './page/WidgetsDemo/Image.dart'; // ImageIconDemo


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter APP',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Flutter APP'),
        ),
        body: new RouterList(
          routerList: [
            new Router(name: 'widget 使用', route: '/widgetsDemo'),
            new Router(name: '小练习', route: '/practiceDemo'),
          ]
        ),
      ),
      routes: <String, WidgetBuilder> {
        // 一级路由 /practiceDemo
        '/practiceDemo': (BuildContext context) => PracticeDemo(),

        // /practiceDemo 以下二级路由
        '/randomText1': (BuildContext context) => RandomBodyStateLess(),
        '/randomText2': (BuildContext context) => RandomBodyStateful(),
        '/shopCart': (BuildContext context) => ShopCart(),
        '/randomList': (BuildContext context) => RandomList(),
        '/counter': (BuildContext context) => Counter(),
        '/listPage': (BuildContext context) => ListPage(),
        '/gridList': (BuildContext context) => GridList(),
        '/buttonTab': (BuildContext context) => ButtonTab(),
        '/inkWell': (BuildContext context) => InkWellDemo(),
        '/dismiss': (BuildContext context) => DismissDemo(),

        // 一级路由 /widgetsDemo
        '/widgetsDemo': (BuildContext context) => WidgetsDemo(),

        // /widgetsDemo 以下的二级路由
        '/image': (BuildContext context) => ImageIconDemo(),

      },
    );
  }
}
