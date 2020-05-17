import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  final Function addCallback;

  AddTaskScreen({this.addCallback});
  @override
  Widget build(BuildContext context) {
    String newTaskTitle;

    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.lightBlueAccent,
                ),
              ),
              TextField(
                autofocus: true,
                onChanged: (text) {
                  newTaskTitle = text;
                  print(text);
                },
              ),
              FlatButton(
                child: Text('Add'),
                textColor: Colors.white,
                color: Colors.lightBlueAccent,
                onPressed: () {
                  taskData.addTask(newTaskTitle);
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
