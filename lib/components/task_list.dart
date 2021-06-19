import 'package:flutter/material.dart';
import 'package:todoey_flutter/components/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';

// ignore: use_key_in_widget_constructors
class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          final task = taskData.taskList[index];
          return TaskTile(
            isChecked: task.isDone,
            taskTitle: task.taskName,
            checkboxCallback: (checkboxState) {
              taskData.checkOffTasks(task);
            },
            longPressCheckBox: () {
              taskData.deleteTasks(task);
            },
          );
        },
        itemCount: taskData.taskCount,
      );
    });
  }
}
