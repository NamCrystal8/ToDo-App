import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/components/task-tile.dart';
import 'package:todo_list/model/task.dart';

import '../model/task-data.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (BuildContext context, TaskData taskData, Widget? child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.getTask()[index];
            return TaskTile(
              isChecked: task.isDone,
              taskTitle: task.name,
              onCheckCallBack: (bool checkboxState) {
                taskData.updateTask(task);
              },
              removeTaskCallBack: () {
                taskData.removeTask(task);
              } ,
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
