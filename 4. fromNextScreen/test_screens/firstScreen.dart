import 'package:flutter/material.dart';

class MyFirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.blue,
      child: Center(
        child: Text(
          "Hello World!",
          textDirection: TextDirection.ltr,
          style: TextStyle(fontSize: 25.0, color: Colors.amberAccent),
        ),
      ),
    );
  }
}
