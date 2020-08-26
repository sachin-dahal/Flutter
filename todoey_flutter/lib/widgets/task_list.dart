import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoeyflutter/widgets/task_tile.dart';
import '../main.dart';

class TasksList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskList>(
      builder: (context, taskData, child){
          return ListView.builder(itemBuilder: (context, index) {
            final task = taskData.tasks[index];  // just it was used for 3 times below haha
            return TaskTile(
              // notify listeners will auto update this if tasks list is updated
            title: task.name,
            isChecked: task.isDone,
            checkBoxCallBack: (newValue) {
              // (newValue) of onChanged here is always true or false
            taskData.updateTask(task);
            },
              removeItem: (){
                taskData.removeTask(task);
              },
          );
        },
          itemCount: taskData.taskCount ,
        );
      },
    );
  }
}
