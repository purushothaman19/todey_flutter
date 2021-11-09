import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/dynamicTaskList.dart';
import 'package:todoey_flutter/screens/task_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => Data()),
    ],
    child: MyApp(),
  ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TasksScreen(),
    );
  }
}
