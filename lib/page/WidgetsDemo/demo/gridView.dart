import 'package:flutter/material.dart';

class GridViewDemo extends StatelessWidget {

  @override
  Widget build (BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('flutter demo - GridView')),
        body: Demo3()
    );
  }
}

// 实现横轴固定数量的 表格
class Demo1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // return GridView(
    //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    //     crossAxisCount: 3, //横轴子元素的数量
    //     childAspectRatio: 1.0 //宽高比为1时，子widget
    //   ),
    //   children: <Widget>[
    //     Icon(Icons.ac_unit),
    //     Icon(Icons.airport_shuttle),
    //     Icon(Icons.all_inclusive),
    //     Icon(Icons.beach_access),
    //     Icon(Icons.cake),
    //     Icon(Icons.free_breakfast)
    //   ],
    // );

    // 等价于
    return GridView.count(
      crossAxisCount: 3, //横轴子元素的数量
      childAspectRatio: 1.0, //宽高比为1时，子widget
      children: <Widget>[
        Icon(Icons.ac_unit),
        Icon(Icons.airport_shuttle),
        Icon(Icons.all_inclusive),
        Icon(Icons.beach_access),
        Icon(Icons.cake),
        Icon(Icons.free_breakfast)
      ],
    );
  }
}

//实现 横轴子元素为固定最大长度的layout算法
// 例： inphoe X 横轴宽度为 370 ， 所以 么当maxCrossAxisExtent的值在区间[375/4，375/3)内的话，子元素最终实际长度都为93.74
class Demo2 extends StatelessWidget {

  @override
  Widget build (BuildContext context) {
    // return GridView(
    //   padding: EdgeInsets.zero,
    //   gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
    //       maxCrossAxisExtent: 93.8,
    //       childAspectRatio: 1.0 //宽高比为2
    //   ),
    //   children: <Widget>[
    //     Icon(Icons.ac_unit, color: Colors.green),
    //     Icon(Icons.airport_shuttle),
    //     Icon(Icons.all_inclusive),
    //     Icon(Icons.beach_access),
    //     Icon(Icons.cake),
    //     Icon(Icons.free_breakfast),
    //   ],
    // );

    // 等价于
    return GridView.extent(
      maxCrossAxisExtent: 93.8,
      childAspectRatio: 1.0, //宽高比为2
      children: <Widget>[
        Icon(Icons.ac_unit, color: Colors.green),
        Icon(Icons.airport_shuttle),
        Icon(Icons.all_inclusive),
        Icon(Icons.beach_access),
        Icon(Icons.cake),
        Icon(Icons.free_breakfast),
      ],
    );
  }
}

// 无限下拉表格

class Demo3 extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => Demo3State();
}

class Demo3State extends State {
  var _icons = <IconData>[];
  @override
  void initState() {
    super.initState();
    _retrieveIcons();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, //每行三列
            childAspectRatio: 1.0 //显示区域宽高相等
      ),
      itemCount: _icons.length,
      itemBuilder: (context, index) {
         //如果显示到最后一个并且Icon总数小于100时继续获取数据
        if (index == _icons.length - 1 && _icons.length < 100) {
          _retrieveIcons();
        }
        return Icon(_icons[index]);
      },
    );
  }

  // 模拟异步数据
  void _retrieveIcons() {
    Future.delayed(Duration(milliseconds: 200)).then((e) {
      setState(() {
        _icons.addAll([
          Icons.ac_unit,
          Icons.airport_shuttle,
          Icons.all_inclusive,
          Icons.beach_access, Icons.cake,
          Icons.free_breakfast
        ]);
      });
    });
  }
}