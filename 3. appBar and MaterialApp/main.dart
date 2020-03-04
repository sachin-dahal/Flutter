import 'package:flutter/material.dart';

void main() {
  runApp(new MyFlutterApp(),);
}

class MyFlutterApp extends StatelessWidget {  // runApp(new MyFlutterApp(),);
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(

      debugShowCheckedModeBanner: false,  // hide debug banner

        title: "My First App",
        home: Scaffold(
          appBar: new AppBar(
            title: Text("My App Bar"),
          ),
          body: Material(
            color: Colors.blue,
            child: Center(
              child: Text(
                "Hello World!",
                textDirection: TextDirection.ltr,
                style: TextStyle(fontSize: 25.0, color: Colors.amberAccent),
              ),
            ),
          ),
        )
    );
  }
}
