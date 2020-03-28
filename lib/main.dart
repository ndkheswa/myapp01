import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('My App'),
        ),
        body: FirstPage()
      ),
    );
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('First Page'),
        ),
        body: new Center(
          child: RaisedButton(
            onPressed: () {
              Navigator.push(
                context, new MaterialPageRoute(
                  builder: (context) => SecondPage()
                )
              );
            }, //code this later
            child: Text('Press here'),
          ),
        ));
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('First Page'),
        ),
        body: new Center(
          child: RaisedButton(
            onPressed: () {}, //code this later
            child: Text('Press here'),
          ),
        ));
  }
}