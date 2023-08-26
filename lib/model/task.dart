import 'package:flutter/material.dart';

class Task{
    bool isDone = false;
  final String name;
  Task({required this.isDone,required this.name});

  void toggleState(){
    isDone = !isDone;
  }
}