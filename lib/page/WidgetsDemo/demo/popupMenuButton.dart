import 'package:flutter/material.dart';

class PopupMenuButtonDemo extends StatelessWidget {

  @override
  Widget build (BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('flutter demo - Text')),
        body: PopupMenuButton<MenuItem>(
                child: Text('menu'),
                onSelected: (MenuItem result) {
                  print('$result  ${result.toString()}');
                },
                itemBuilder: (BuildContext context) => <PopupMenuEntry<MenuItem>>[
                  const PopupMenuItem<MenuItem>(
                    value: MenuItem.menuA,
                    child: Text('menu A'),
                  ),
                  const PopupMenuItem<MenuItem>(
                    value: MenuItem.menuB,
                    child: Text('menu B'),
                  ),
                  const PopupMenuItem<MenuItem>(
                    value: MenuItem.menuC,
                    child: Text('menu C'),
                  ),
                  const PopupMenuItem<MenuItem>(
                    value: MenuItem.menuD,
                    child: Text('menu D'),
                  ),
                ],
              ),
    );
  }
}

enum MenuItem { menuA, menuB, menuC, menuD }