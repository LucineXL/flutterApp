import 'package:flutter/material.dart';

abstract class ListItem {}

class HeadingItem implements ListItem {
  final String title;

  HeadingItem(this.title);
}

class MessageItem implements ListItem {
  final String sender;
  final String body;

  MessageItem(this.sender, this.body);
}

class ListWrap extends StatelessWidget {
  final List<ListItem> items;

  ListWrap({Key key, this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          if (item is HeadingItem) {
            return new ListTile(
              title: new Text(
                item.title,
                style: Theme
                    .of(context)
                    .textTheme
                    .headline,
              ),
            );
          } else if (item is MessageItem) {
            return new ListTile(
              title: new Text(item.sender),
              subtitle: new Text(item.body),
            );
          }
          return null;
        }
    );
  }
}

class ListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('List Page'),
        ),
        body: new ListWrap(
          items: new List<ListItem>.generate(
            1000,
            (i) => i % 6 == 0
            ? new HeadingItem('Heading $i')
            : new MessageItem('sender $i', 'body $i'),
          ),
        ),
    );
  }
}