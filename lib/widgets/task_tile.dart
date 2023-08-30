import 'package:flutter/material.dart';


class TaskTile extends StatelessWidget {
  TaskTile({this.ischecked = false,  this.taskTitle, this.checkboxCallback});
   bool ischecked = false;
  final taskTitle;
   final checkboxCallback;

  @override
  Widget build(BuildContext context) {
    return  ListTile(

      title: Text(taskTitle,
        style: TextStyle(
            decoration: ischecked ? TextDecoration.lineThrough : null),),
      trailing: Checkbox(
        checkColor: Colors.lightBlueAccent,
        value: ischecked,
        onChanged: checkboxCallback
      ),
    );
  }
}
