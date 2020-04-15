import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp(),);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi Card App',
      home: SafeArea(
        child: new Scaffold(
          backgroundColor: Colors.teal,
          body: new Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                width: 100.0,
                color: Colors.red,
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 100.0,
                    width: 100.0,
                    color: Colors.yellow,
                  ),

                  Container(
                    height: 100.0,
                    width: 100.0,
                    color: Colors.lightGreen,
                  ),
                ],
              ),

              Container(
                width: 100.0,
                color: Colors.blue,
              ),
            ],
          ),
          ),
      ),
      );
  }
}
