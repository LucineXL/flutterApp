import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class RandomText extends StatefulWidget {
  @override
  _RandomTextState createState() => _RandomTextState();
}

class _RandomTextState extends State<RandomText> {
  @override
  Widget build(BuildContext context) {
    final wordPair = new WordPair.random();
    return new Text(wordPair.asPascalCase);
  }
}

class RandomBodyStateful extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('RandomBodyStateful'),
      ),
      body: new Center(
        child: new RandomText(),
      ),
    );
  }
}

