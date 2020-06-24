import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class RandomText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wordPair = new WordPair.random();
    return new Text(wordPair.asPascalCase);
  }
}

class RandomBodyStateLess extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('RandomBodyStateLess'),
      ),
      body: new Center(
        child: new RandomText(),
      ),
    );
  }
}