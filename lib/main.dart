import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/model/task-data.dart';
import 'package:todo_list/screens/task-screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => TaskData(),
      child: MaterialApp(
        home: TaskScreen(),
      ),
    );
  }
}
