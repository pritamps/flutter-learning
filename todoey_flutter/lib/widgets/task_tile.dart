import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String title;

  TaskTile({this.title});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Task'),
      trailing: Checkbox(
        value: false,
      ),
    );
  }
}
