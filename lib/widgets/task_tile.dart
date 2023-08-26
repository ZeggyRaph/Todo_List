import 'package:flutter/material.dart';


class TaskTile extends StatefulWidget {
  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool ischecked = false;

  @override
  Widget build(BuildContext context) {
    return  ListTile(

      title: Text('Eat Food',
        style: TextStyle(
            decoration: ischecked ? TextDecoration.lineThrough : null),),
      trailing: TaskCheckbox(TogglecheckboxState: (newCheckBoxState){
        setState(() {
          ischecked = newCheckBoxState;
        });}, checkboxState : ischecked,),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  const TaskCheckbox({super.key, required this.checkboxState, required this.TogglecheckboxState});
 final bool checkboxState;
  final  TogglecheckboxState;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      checkColor: Colors.lightBlueAccent,
      value: checkboxState,
      onChanged:TogglecheckboxState,);
  }
}