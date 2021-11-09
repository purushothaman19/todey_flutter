import 'package:flutter/cupertino.dart';
import 'package:todoey_flutter/models/task.dart';
import 'dart:collection';

class Data extends ChangeNotifier {
  List<Task> _taskList = [
    Task(name: "Dream"),
    Task(name: "Believe"),
    Task(name: "Achieve"),
  ];

  UnmodifiableListView<Task> get taskList => UnmodifiableListView(_taskList);

  int get taskCounter => taskList.length;

  void addNewTask(Task newTask) {
    _taskList.add(newTask);
    notifyListeners();
  }

  void updateTask(Task task){
    task.toggleCheckBox();
    notifyListeners();
  }

  void removeTask(int position){
    _taskList.remove(_taskList[position]);
    notifyListeners();
  }

  void emptyTask(){
    _taskList.clear();
    notifyListeners();
  }
}
