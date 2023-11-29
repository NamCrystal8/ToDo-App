import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/task-data.dart';
import '../model/task.dart';

class AddTaskScreen extends StatelessWidget {
  late String newTaskTitle;
  AddTaskScreen();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            )),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                "Add data",
                style: TextStyle(color: Colors.lightBlueAccent, fontSize: 30),
                textAlign: TextAlign.center,
              ),
              TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                onChanged: (value) => newTaskTitle = value,
              ),
              const SizedBox(
                height: 10,
              ),
              TextButton(
                onPressed: () {
                  Provider.of<TaskData>(context, listen: false).addTask(newTaskTitle);
                  Navigator.pop(context);
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.lightBlueAccent),
                ),
                child: const Text("Add"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
