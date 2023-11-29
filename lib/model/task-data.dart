import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:todo_list/model/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: "Đi ngủ"),
    Task(name: "Đi ăn"),
    Task(name: "Đi vệ sinh"),
  ];
  int get taskCount {
    return _tasks.length;
  }

  UnmodifiableListView<Task> getTask() {
    return UnmodifiableListView(_tasks);
  }

  void addTask(String newTaskTitle) {
    final task = Task(name: newTaskTitle);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }
  void removeTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
