import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){

  runApp(new MyApp(),);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: "My App",
      home: new HomeClass(),

      // changes the theme of the app
      theme: new ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.light,
        accentColor: Colors.yellow,
        canvasColor: Colors.lightGreenAccent,

      ),

    );
  }
}

class HomeClass extends StatefulWidget {
  @override
  _HomeClassState createState() => _HomeClassState();
}


class _HomeClassState extends State<HomeClass> {

  String myText = "Hello Flutter";

  void _changeText(){
    setState(() {
      
      new Text(myText);
      
      if(myText.startsWith("H")){
        myText = "Welcome to flutter";
      }
      else {
        myText = "Hello World!";
      }
      
    });

  }



  Widget _bodyWidget(){
    return new Container(
      padding: EdgeInsets.all(50.0),
      child: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(myText, style: TextStyle(fontSize: 20.0, color: Colors.blue),),
            new RaisedButton(
              child: new Text("Click Me", style: TextStyle(fontSize: 20.0, color: Colors.red,),),

                onPressed: _changeText,
              color: Colors.yellow,



            )
          ],
        ),
      ),

    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("My App Bar"),
      ),
      body: _bodyWidget(),

    );
  }
}
