import 'package:flutter/material.dart';


void main() => runApp(MyApp(),);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'My First App',
      home: new HomePage(),
      theme: new ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.orange,
        accentColor: Colors.red,
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String myText = ("Hello World!");

  void _changeText(){

    setState(() {
      if(myText.startsWith("H")){
        myText = ("Welcome to Flutter!");

      }else{
        myText = ("Hello World!");
      }
    });
  }


  Widget _bodyWidget(){
    return Container(
      padding: new EdgeInsets.all(12.0),
      child: new Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(myText, style: new TextStyle(

              color: Colors.red,
              fontSize: 20.0,
            ),),

          ],
        ),
      ),
    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: new AppBar(
        title: new Text("My App Bar",),
      ),
      body: _bodyWidget(),
      floatingActionButton: new FloatingActionButton(
        child: new Icon(Icons.add),
        onPressed: _changeText,

      ),
    );
  }
}


