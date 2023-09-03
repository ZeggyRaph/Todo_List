//Packages
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

//widgets
import 'package:todos/widgets/task_tile.dart';

//models
import 'package:todos/model/task_data.dart';

class TaskList extends StatelessWidget {
  const TaskList({super.key});

  @override
  Widget build(BuildContext context) {
//instead of repetition as below, let us use a consumer widget here
return Consumer<TaskData>(builder:((context, taskData, child) =>
    ListView.builder(itemBuilder: (context, index) {
      final todoTaskData = taskData.task[index];
      return TaskTile(longPressedCallback: (){
        taskData.deleteTask(todoTaskData);},
        taskTitle: todoTaskData.name,
        ischecked:  todoTaskData.isDone,
        checkboxCallback: (checkboxState){
        taskData.checkboxUpdate(todoTaskData);
        },
      );
    },
      itemCount:  taskData.taskCount,

    )
) ,
);
  }
}




