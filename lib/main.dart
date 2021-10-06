import 'package:flutter/material.dart';
import 'package:my_todo/models/task_data.dart';
import 'package:my_todo/screens/tasks_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => TaskData(),
      child: MaterialApp(
        theme: ThemeData(fontFamily: 'VarelaRound'),
        home: TasksScreen(),
      ),
    );
  }
}
