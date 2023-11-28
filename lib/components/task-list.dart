import 'package:flutter/material.dart';
import 'package:todo_list/components/task-tile.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding:
      const EdgeInsets.only(top: 60, left: 30, right: 30, bottom: 30),
      children: [
        TaskTile(
          text: "Nam",
        ),
        TaskTile(
          text: "Me may beo",
        ),
      ],
    );
  }
}