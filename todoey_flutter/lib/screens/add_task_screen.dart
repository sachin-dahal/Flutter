import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoeyflutter/main.dart';

class AddTaskScreen extends StatelessWidget {

  String newTaskTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      //using the same color as background because we cannot use borderRadius in the first returned container
      color: Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.lightBlueAccent, fontSize: 30.0),
            ),
            TextField(
              autofocus: true, // automatically popup keyboard if the ModalBottomSheet is called
              textAlign: TextAlign.center,
              onChanged: (value){
                newTaskTitle = value;
              },
            ),
            SizedBox(
              height: 25.0,
            ),
            FlatButton(
              onPressed: (){
                print('print');
                Provider.of<TaskList>(context, listen: false).addTask(newTaskTitle);
                Navigator.pop(context);
                print(newTaskTitle);
              },
              padding: EdgeInsets.all(15.0),
              color: Colors.lightBlueAccent,
              child: Text(
                "Add",
                style: TextStyle(color: Colors.white, fontSize: 18.0),
              ),
            )
          ],
        ),
      ),
    );
  }
}
