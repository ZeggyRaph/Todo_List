import 'package:flutter/material.dart';
import 'package:todos/widgets/task_tile.dart';
import 'package:todos/model/task.dart';

class TaskList extends StatefulWidget {
  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  List<Task> task = [
    Task(isDone: isDone, name: name)
  ];
  @override
  Widget build(BuildContext context) {
    return ListView(
      children:  [
        TaskTile(),
        TaskTile(),
        TaskTile(),
      ],
    );
  }
}