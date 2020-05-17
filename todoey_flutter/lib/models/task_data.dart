import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:todoey_flutter/models/task.dart';

/**
 *
*/

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(
      name: "Buy Milk",
      isDone: false,
    ),
    Task(
      name: "Buy Bread",
      isDone: true,
    ),
    Task(
      name: "Buy Bread",
      isDone: false,
    ),
    Task(
      name: "Buy Bread",
      isDone: true,
    )
  ];

  int get taskCount {
    return _tasks.length;
  }

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  void addTask(String title) {
    _tasks.add(Task(name: title, isDone: false));
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(index) {
    _tasks.removeAt(index);
    notifyListeners();
  }
}
