import 'package:flutter/material.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/dynamicTaskList.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<Data>(builder: (context, dynamicTask, child) {
      return ListView.builder(
          shrinkWrap: true,
          itemCount: dynamicTask.taskList.length,
          itemBuilder: (context, index) {
            final task = dynamicTask.taskList[index];
            return TaskTile(
              taskTile: task.name,
              isChecked: task.isDone,
              checkboxCallback: (checkboxStatus) {
                dynamicTask.updateTask(task);
              },
              onLongPressCallback: () {
                dynamicTask.removeTask(dynamicTask.taskList.indexOf(task));
              },
            );
          });
    });
  }
}
