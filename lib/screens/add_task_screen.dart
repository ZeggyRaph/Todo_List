import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: EdgeInsets.all(20.0),
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
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: TextField(
                textAlign: TextAlign.center,
                autofocus: true,
              ),
            ),
            ElevatedButton(onPressed: (){},
              child: const Text('Add'),),
            
          ],
        ),
      ),
    );
  }
}
