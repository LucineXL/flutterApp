import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {

  int _count = 0;

  void _increment () {
    setState(() {
      _count++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('count demo'),
      ),
      body: new Column(
        children: <Widget>[
          new RaisedButton(
            onPressed: _increment,
            child: new Text('Increment'),
          ),
          new Expanded(
            child: new Center(
              child: new Text('$_count'),
            ),
          )
        ],
      ),
      floatingActionButton: new FloatingActionButton(
        tooltip: 'Add', // used by assistive technologies
        child: new Icon(Icons.add),
        onPressed: _increment,
      ),
    );
  }

}