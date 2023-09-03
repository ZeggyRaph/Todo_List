import 'package:flutter/material.dart';


class TaskTile extends StatelessWidget {
  TaskTile({this.ischecked = false,
    this.taskTitle,
    this.checkboxCallback,
    this.longPressedCallback,
  });
   bool ischecked = false;
  final taskTitle;
   final checkboxCallback;
   final longPressedCallback;

  @override
  Widget build(BuildContext context) {
    return  ListTile(onLongPress: longPressedCallback,

      title: Text(taskTitle,
        style: TextStyle(
            decoration: ischecked ? TextDecoration.lineThrough
                : null),),
      trailing: Checkbox(
        checkColor: Colors.lightBlueAccent,
        value: ischecked,
        onChanged: checkboxCallback
      ),
    );
  }
}
