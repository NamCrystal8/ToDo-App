import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {

  TaskTile({required this.text});
  late String text;

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(widget.text),
      trailing: TaskCheckBox(),
    );
  }
}

class TaskCheckBox extends StatelessWidget {

  late final bool checkboxState;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: checkboxState,
      onChanged: (newValue) {
        // setState(() {
        //   checkboxState = newValue!;
        // });
      },
    );
  }
}