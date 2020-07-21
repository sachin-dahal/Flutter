import 'package:code_learno/widgets/program_topic-head.dart';
import 'package:flutter/material.dart';

class ChooseProgram extends StatefulWidget {
  @override
  _ChooseProgramState createState() => _ChooseProgramState();
}

class _ChooseProgramState extends State<ChooseProgram> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: SafeArea(
        child: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              // for java part
              ProgramTopic(
                onTap: () {
                  print("JAVA Pressed");
                },
                image: 'images/java.svg',
                imageLabel: 'JAVA Logo',
                title: 'JAVA',
                subtitle:
                    "Java is a popular high-level programming language developed by Sun Microsystems.",
              ),
              // SizedBox(
              //   height: MediaQuery.of(context).size.height / 6,
              // ),
              // for python part
              ProgramTopic(
                onTap: () {
                  print("Python Pressed");
                },
                image: 'images/python.svg',
                imageLabel: 'PYTHON Logo',
                title: 'PYTHON',
                subtitle:
                    "Python is a popular high-level programming language developed by Sun Microsystems.",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
