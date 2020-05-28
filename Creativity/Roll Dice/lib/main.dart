import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      title: "Dice App",
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(child: Text('Dicee')),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),

      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void _changeDice(){
    leftDiceNumber = Random().nextInt(6) + 1;
    rightDiceNumber = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 40.0, right: 40.0, bottom: 20),
                child: new Container(
                  //padding: EdgeInsets.only(left: 40.0),
                  height: 80.0,
                  width: 100.0,
                  child: Center(
                    child: Text("$leftDiceNumber",style: new TextStyle(
                      color: Colors.white,
                      fontSize: 50.0,
                      fontWeight: FontWeight.bold,
                    ),),
                  ),

                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40.0, bottom: 20),
                child: new Container(
                  height: 80.0,
                  width: 100.0,
                  child: Center(
                    child: Text("$rightDiceNumber",style: new TextStyle(
                        color: Colors.white,
                        fontSize: 50.0,
                        fontWeight: FontWeight.bold,
                    ),),
                  ),

                ),
              ),
            ],
          ),

          Row(
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  onPressed: (){
                    setState(() {
                      leftDiceNumber = Random().nextInt(6) + 1;
                    });
                  },
                  child: Image.asset('images/dice$leftDiceNumber.png'),
                ),
              ),

              Expanded(
                child: FlatButton(
                  onPressed: (){
                    setState(() {
                      rightDiceNumber = Random().nextInt(6) + 1;
                    });
                  },
                  child: Image.asset('images/dice$rightDiceNumber.png'),
                ),
              ),
            ],
          ),
          SizedBox(height: 20.0,),
          RaisedButton(
            onPressed: (){
              setState(() {
                _changeDice();
              });
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("ROLL", style: new TextStyle(
                color: Colors.white,
                fontSize: 25.0,
                letterSpacing: 1.5,
              ),),
            ),
            color: Colors.redAccent,
          ),
          SizedBox(height: 10.0,),
          RaisedButton(
            onPressed: (){
              setState(() {
                leftDiceNumber = 1;
                rightDiceNumber = 1;
              });
            },
            child: Text("RESET", style: new TextStyle(
              color: Colors.white,
              fontSize: 15.0,
              letterSpacing: 1.5,
            ),),

            color: Colors.redAccent,

          ),
        ],
      ),
    );
  }
  }

