import 'package:flutter/widgets.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        TaskTile(
          title: 'Task',
        ),
        TaskTile(
          title: 'Task',
        ),
        TaskTile(
          title: 'Task',
        ),
      ],
    );
  }
}
