import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/presets.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/dynamicTaskList.dart';
import 'package:todoey_flutter/models/task.dart';

class AddTask extends StatelessWidget {

  late String newTask;

  @override
  Widget build(BuildContext context) {
    return Consumer<Data>(
      builder: (context, taskData, child) {
        return Container(
          color: Color(0xff757575),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20), topLeft: Radius.circular(20)),
                color: Colors.white),
            child: Padding(
              padding: EdgeInsets.all(50),
              child: Column(
                children: [
                  Text(
                    "Add Task",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                        color: Colors.lightBlueAccent),
                  ),
                  TextField(
                    textAlign: TextAlign.center,
                    autofocus: true,
                    decoration: kTextFieldDecoration,
                    onChanged: (value){
                      newTask = value;
                    },
                  ),
                  SizedBox(height: 40),
                  TextButton(
                      child: Center(
                        child: Text(
                          "Add",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                        taskData.addNewTask(Task(name: newTask));
                      },
                      style: kSubmitButtonStyle
                  ),
                ],
              ),
            ),
          ),
        );
      }
    );
  }
}

