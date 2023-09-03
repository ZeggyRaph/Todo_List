//packages
import 'package:flutter/material.dart';
import 'dart:collection';
//models
import 'task.dart';


class TaskData extends ChangeNotifier{
//This creates a list of the Task model class with its props.
  final List<Task> _task = [
    Task(name: 'Time to study'),
    Task(name: 'Time to go to work'),
    Task(name: 'Time to sleep'),
  ];

  //To ensure that task is not modified outside this class
  UnmodifiableListView<Task> get task {
    return UnmodifiableListView(_task);
  }
  //This is used to get the length of the task
  int get taskCount{
    return _task.length;
  }

  void newTask(String newTaskTitle){
    final newTaskItem = Task(name: newTaskTitle);
    _task.add(newTaskItem);
    notifyListeners();
  }

  //To check and uncheck each task
  void checkboxUpdate(Task checkboxToggle){
    checkboxToggle.toggleDone();
    notifyListeners();
  }
  //To delete task
  void deleteTask(Task delete){
    _task.remove(delete);
    notifyListeners();
  }
}