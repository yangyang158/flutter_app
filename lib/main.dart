import 'package:flutter/material.dart';
// import 'package:english_words/english_words.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return new MaterialApp(
          title: 'Welcome to Flutter',
          home: new Scaffold(
            appBar: new AppBar(
              title: new Text('欢迎来到淘拍拍'),
            ),
            body: new Center(
              //child: new Text('candy, Hello World'),
              child: new AmoyPat(),
            ),
          ),
        );
    }
}

class AmoyPat extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
       return new Text('666, Hello World');
    }
}