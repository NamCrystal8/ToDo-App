import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  bool isChecked = false;
  String taskTitle;
  Function onCheckCallBack;
  Function removeTaskCallBack;
  TaskTile(
      {required this.isChecked,
      required this.taskTitle,
      required this.onCheckCallBack,
      required this.removeTaskCallBack});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onLongPress: () => removeTaskCallBack(),
        contentPadding: EdgeInsets.symmetric(horizontal: 60),
        title: Text(
          taskTitle,
          style: TextStyle(
              decoration:
                  isChecked ? TextDecoration.lineThrough : TextDecoration.none),
        ),
        trailing: Checkbox(
            activeColor: Colors.lightBlueAccent,
            value: isChecked,
            onChanged: (value) {
              onCheckCallBack(value);
            }));
  }
}
