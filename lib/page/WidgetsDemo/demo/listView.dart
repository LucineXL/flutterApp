import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class ListViewDemo extends StatelessWidget {

  @override
  Widget build (BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('flutter demo - ListView')),
        body: Demo3(),
    );
  }
}


// listView
class Demo1 extends StatelessWidget {
  @override
  Widget build (BuildContext context) {
    return ListView.builder(
        itemCount: 100,
        itemExtent: 50.0, //强制高度为50.0
        itemBuilder: (BuildContext context, int index) {
          return ListTile(title: Text("$index"));
        },
    );
  }
}
// 带分割线的listView
class Demo2 extends StatelessWidget {

  Widget divider1=Divider(color: Colors.red,);
  Widget divider2=Divider(color: Colors.blue);

  @override
  Widget build (BuildContext context) {
    return ListView.separated(
        itemCount: 100,
        //列表项构造器
        itemBuilder: (BuildContext context, int index) {
          return ListTile(title: Text("$index"));
        },
         //分割器构造器
        separatorBuilder: (BuildContext context, int index) {
          return index%2==0?divider1:divider2;
        },
    );
  }
}

// 实现无限加载列表
class Demo3 extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => Demo3State();
}

class Demo3State extends State {

  static final loadingTag = '##loading##'; // 结尾标志
  var _words = <String>[loadingTag];

  @override
  void initState() {
    super.initState();
    _retrieveData();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: _words.length,
      itemBuilder: (BuildContext context, int index) {
          print('$index    ${_words.length}');
        if (_words[index] == loadingTag) {
          print('111');
          if (_words.length - 1 < 100) {
            //获取数据
            _retrieveData();
            //加载时显示loading
            return Container(
              padding: const EdgeInsets.all(16.0),
              alignment: Alignment.center,
              child: SizedBox(
                  width: 24.0,
                  height: 24.0,
                  child: CircularProgressIndicator(strokeWidth: 2.0)
              ),
            );
          } else {
            //已经加载了100条数据，不再获取数据。
            return Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(16.0),
                child: Text("没有更多了", style: TextStyle(color: Colors.grey),)
            );
          }
        } else {
          return ListTile(title: Text(_words[index]));
        }

      },
      separatorBuilder: (context, index) => Divider(height: .0),
    );
  }

    void _retrieveData() {
     Future.delayed(Duration(seconds: 2)).then((e) {
      _words.insertAll(_words.length - 1,
          //每次生成20个单词
          generateWordPairs().take(20).map((e) => e.asPascalCase).toList()
      );
      setState(() {
        //重新构建列表
      });
    });
  }
}
