import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoeyflutter/screens/task_screen.dart';
import 'models/task.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TaskList>(
      create: (context) => TaskList(),
      child: MaterialApp(
        title: 'Todoey',
        home: TaskScreen(),
      ),
    );
  }
}

// for provider package
class TaskList extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'Buy Milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy bread'),
  ];

  // getter method for _tasks list
  // unmodifiable  is a view of another list which does not let to directly change or add list items
  UnmodifiableListView<Task> get tasks{
    return UnmodifiableListView(_tasks);
  }

  // to use in place of tasks.length, this will be used for understanding purpose
  int get taskCount {
    return _tasks.length;
  }

  // method used to add task to the tasks list
  void addTask(String newTaskTitle) {
    final task = Task(name: newTaskTitle);
    _tasks.add(task);
    notifyListeners();
  }
  // to update the checkBox where toggleDone method from Task class changes frequently when called (true or false)
  void updateTask(Task task){
    task.toggleDone();
    notifyListeners();
  }

  // to remove the task and using it in task_list
  void removeTask(Task task){
    _tasks.remove(task);
    notifyListeners();
  }

}
