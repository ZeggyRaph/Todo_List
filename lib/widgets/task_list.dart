import 'package:flutter/material.dart';
import 'package:todos/widgets/task_tile.dart';
import 'package:todos/model/task.dart';

class TaskList extends StatefulWidget {
  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  //This creates a list of the Task model class with its props.
  List<Task> task = [
    Task(name: 'Time to study'),
    Task(name: 'Time to go to work'),
    Task(name: 'Time to sleep'),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return TaskTile(taskTitle: task[index].name,ischecked: task[index].isDone,
        checkboxCallback: (checkboxState){
        setState(() {
          //task[index].isDone = checkboxState;
          task[index].toggleDone();
        });

        },
      );

    },
      itemCount: task.length,

    );
  }
}