import 'package:flutter/material.dart';
import 'package:todos/widgets/task_tile.dart';
import 'package:todos/model/task.dart';

class TaskList extends StatefulWidget {
 List<Task> tasks;
 TaskList({required this.tasks});

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return TaskTile(taskTitle: widget.tasks[index].name,ischecked: widget.tasks[index].isDone,
        checkboxCallback: (checkboxState){
        setState(() {
          widget.tasks[index].toggleDone();
        });

        },
      );
    },
      itemCount: widget.tasks.length,

    );
  }
}