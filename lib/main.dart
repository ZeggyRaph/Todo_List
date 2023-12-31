import 'package:flutter/material.dart';
import 'package:todos/model/task_data.dart';
import 'screens/home_screen.dart';
import 'package:todos/model/task_data.dart';

import 'package:provider/provider.dart';

void main() {
  runApp (const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context) => TaskData(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}
