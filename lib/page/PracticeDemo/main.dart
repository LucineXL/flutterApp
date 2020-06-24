import 'package:flutter/material.dart';
import '../../widgets/Router.dart';

class PracticeDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('practiceDemo'),
      ),
      body: new RouterList(routerList: [
        new Router(name: '随机单词（无状态）', route: '/randomText1'),
        new Router(name: '随机单词（有状态）', route: '/randomText2'),
        new Router(name: '随机单词列表', route: '/randomList'),
        new Router(name: '购物车', route: '/shopCart'),
        new Router(name: '计数器', route: '/counter'),
        new Router(name: '不同子项的列表', route: '/listPage'),
        new Router(name: '网格布局的列表', route: '/gridList'),
        new Router(name: '处理点击事件', route: '/buttonTab'),
        new Router(name: '触摸水波效果', route: '/inkWell'),
        new Router(name: '实现滑动关闭', route: '/dismiss'),
      ]),
    );
  }
}
