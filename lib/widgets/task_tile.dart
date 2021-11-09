import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {

  final bool isChecked;
  final String taskTile;
  final Function(bool?) checkboxCallback;
  final Function()? onLongPressCallback;

  TaskTile({required this.isChecked, required this.taskTile, required this.checkboxCallback, required this.onLongPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: onLongPressCallback,
      title: Text(taskTile,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}
