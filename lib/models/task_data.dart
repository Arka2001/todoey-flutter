import 'dart:collection';
import 'package:flutter/foundation.dart';
import 'package:todoey_flutter/models/task.dart';

class TaskData extends ChangeNotifier {
  // ignore: prefer_final_fields
  List<Task> _tasks = [
    Task(taskName: 'Buy bread'),
    Task(taskName: 'Buy eggs'),
    Task(taskName: 'Buy milk'),
  ];

  UnmodifiableListView<Task> get taskList {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  void addTask(String taskTitle) {
    final task = Task(taskName: taskTitle);
    _tasks.add(task);
    notifyListeners();
  }

  void checkOffTasks(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTasks(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
