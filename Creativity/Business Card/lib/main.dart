import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp(),);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi Card App',
      home: new Scaffold(
          backgroundColor: Colors.teal,
          body: SafeArea(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 45.0,
                  backgroundImage: AssetImage('images/mi_card_image.png'),
                ),
                Text(
                  "Sachin Dahal",
                  style: new TextStyle(
                    fontSize: 35.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Pacifico',
                ),
                ),
                Text(
                  "FLUTTER DEVELOPER",
                  style: new TextStyle(
                    fontSize: 20.0,
                    color: Colors.teal[100],
                    fontFamily: 'SourceSansPro',
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.5,
                  ),
                ),

                SizedBox(
                  height: 20.0,
                  width: 100.0,
                  child: Divider(
                    color: Colors.teal.shade100,

                  ),
                ),

                Card(
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  color: Colors.white,
                  child: ListTile(
                    leading: Icon(Icons.call, color: Colors.teal,
                    ),
                    title: Text("9815309245", style: new TextStyle(
                      color: Colors.teal,
                      fontSize: 20.0,
                      fontFamily: "SourceSansPro",
                    ),
                    ),
                  ),
                ),

                Card(
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  color: Colors.white,
                  child: ListTile(
                    leading: Icon(Icons.email, color: Colors.teal,
                    ),
                    title: Text("sachindahal@gmail.com", style: new TextStyle(
                        color: Colors.teal,
                        fontFamily: "SourceSansPro",
                        fontSize: 20.0
                    ),
                    ),
                  ),
                ),

              ],

            ),
          ),
        ),
      );
  }
}
