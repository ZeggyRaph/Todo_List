//packages
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
//models
import 'package:todos/model/task_data.dart';

class AddTaskScreen extends StatefulWidget {
  const AddTaskScreen({super.key});

  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}
class _AddTaskScreenState extends State<AddTaskScreen> {
 late String newTaskTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff757575),
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20.0),),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children:  [
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text('Add Task',
                textAlign: TextAlign.center,
                style:TextStyle(
                    color: Colors.lightBlueAccent,
                    fontSize: 25,
                fontWeight: FontWeight.w700) ,),
            ),
             Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                textAlign: TextAlign.center,
                autofocus: true,
                onChanged: (value) {
                  newTaskTitle = value;
                },
              ),
            ),
            ElevatedButton(onPressed: (){
              Provider.of<TaskData>(context, listen: false).newTask(newTaskTitle);
              Navigator.pop(context);
            },
              child: const Text('Add'),),

          ],
        ),
      ),
    );
  }
}
