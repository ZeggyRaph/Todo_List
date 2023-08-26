import 'package:flutter/material.dart';
import 'package:todos/widgets/task_tile.dart';
import 'package:todos/model/task.dart';

class TaskList extends StatefulWidget {
  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  List<Task> task = [
    Task(name: 'Time to study'),
    Task(name: 'Time to go to work'),
    Task(name: 'Time to sleep'),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return TaskTile();

    },
      itemCount: task.length,

    );
  }
}