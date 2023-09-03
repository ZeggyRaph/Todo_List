//packages
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

//model
import 'package:todos/model/task_data.dart';
//widgets
import 'package:todos/widgets/task_list.dart';
//screens
import 'add_task_screen.dart';



class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:  FloatingActionButton(
        onPressed: (){
          showModalBottomSheet(context: context,
            builder:(context) => AddTaskScreen(
          ),);
        },
        backgroundColor: Colors.lightBlueAccent,
          child: const Icon(Icons.add,color: Colors.white,),),
      backgroundColor: Colors.lightBlueAccent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            //margin: EdgeInsets.all(30.0),
            padding: const EdgeInsets.only(
                top: 60.0,bottom: 30.0,right: 30.0,left: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
              const CircleAvatar(
                radius: 30,
                backgroundColor: Colors.white,
                child: Icon(Icons.list,
                  color: Colors.lightBlueAccent,
                size: 30.0,),
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Text('Todos',
                style: TextStyle(
                    fontSize: 50.0,
                    fontWeight: FontWeight.w700,
                  color: Colors.white
                ),),
              Text('${Provider.of<TaskData>(context).taskCount} Task',
                style: const TextStyle(
                    color: Colors.white,
                fontSize: 18.0),),
            ],),
          ),
          Expanded(child: Container(
            padding:  const EdgeInsets.symmetric(horizontal: 20.0),
            height: 200,
           // color: Colors.white,

            decoration:  const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),),
            child: const TaskList(),
          ),),

        ],
      ),

    );
  }
}



