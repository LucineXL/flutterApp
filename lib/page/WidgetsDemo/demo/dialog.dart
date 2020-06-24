import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class DialogDemo extends StatelessWidget {

  @override
  Widget build (BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('flutter demo - Text')),
        body: Column(
          children: <Widget>[
            Builder(
                builder: (context) => RaisedButton(
                  child: Text('showAboutDialog'),
                  onPressed: () {
                    showAboutDialog(
                      context: context,
                      applicationName: 'showAboutDialog',
                      applicationVersion: 'v1.0.0',
                    );
                  },
                ),
            ),
            Builder(
                builder: (context) => RaisedButton(
                  child: Text('SimpleDialog'),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => SimpleDialog(
                        title: Text('SimpleDialog Demo'),
                        children: <Widget>[
                          SimpleDialogOption(
                            child: Text('OK'),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                          SimpleDialogOption(
                            child: Text('CANCEL'),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          )
                        ],
                      ),
                    );
                  },
                ),
            ),
            Builder(
                builder: (context) => RaisedButton(
                  child: Text('AlertDialog'),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: Text('AlertDialog'),
                        content: Text('this is an alert dialog'),
                        actions: <Widget>[
                          FlatButton(
                            child: Text('Ok'),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                          FlatButton(
                            child: Text('Cancel'),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          )
                        ]
                      ),
                    );
                  },
                ),
              ),
              Builder(
                builder: (context) => RaisedButton(
                  child: Text('CupertinoAlertDialog'),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => CupertinoAlertDialog(
                        title: Text('CupertinoAlertDialog'),
                        content: Text('this is a cupertinoAlert Dialog'),
                        actions: <Widget>[
                          CupertinoDialogAction(
                            child: Text('Ok'),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                          CupertinoDialogAction(
                            child: Text('Cancel'),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          )
                        ]
                      ),
                    );
                  },
                ),
              ),
          ],
        )
    );
  }
}