import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp(),);
}

// containers are single child widget
// column and rows are multi child widget
// https://medium.com/flutter-community/flutter-layout-cheat-sheet-5363348d037e

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Card',
      home: new Scaffold(
        backgroundColor: Colors.teal,
        body: new SafeArea(
          child: new Column(
            // mainAxisSize: MainAxisSize.min, //makes column of exact size
            //verticalDirection: VerticalDirection.up, //makes children upside down
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly, //calculates total space and divide between childrens
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              // we can put here a lot of widgets
              Container(
                height: 100,
                width: 100,
                color: Colors.white,
                child: Center(child: new Text("Container 1")),
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.red,
                child: Center(child: new Text("Container 2")),
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.blue,
                child: Center(child: new Text("Container 3")),
              ),
            ],
          ),
        ),
      )
    );
  }
}

// in order to provide an exact space between containers, SizedBox() can be used.

// all these things are exactly same for the Row