import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function(bool?) checkboxCallback;
  final Function()? longPressCallback;

  TaskTile(
      {required this.isChecked,
      required this.taskTitle,
      required this.checkboxCallback,
      required this.longPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null,
            fontWeight: FontWeight.w600,
            fontSize: 18,
            height: 1.5),
      ),
      leading: Checkbox(
        activeColor: Colors.greenAccent.shade700,
        shape: CircleBorder(),
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}
