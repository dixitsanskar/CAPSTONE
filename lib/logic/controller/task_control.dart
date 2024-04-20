import 'package:flutter/material.dart';
import '../../model/task.dart';

class TaskProvider extends ChangeNotifier {
  List<Task> _tasks = [
    Task(id: '1', title: 'Task 1', description: 'Description 1', status: 'To Do'),
    Task(id: '2', title: 'Task 2', description: 'Description 2', status: 'In Progress'),
    Task(id: '3', title: 'Task 3', description: 'Description 3', status: 'Done'),
  ];

  List<Task> get tasks => _tasks;

  void moveTask(String taskId, String newStatus) {
    final index = _tasks.indexWhere((task) => task.id == taskId);
    if (index != -1) {
      _tasks[index].status = newStatus;
      notifyListeners();
    }
  }

  void addTask(Task task) {
    _tasks.add(task);
    notifyListeners();
  }

  void deleteTask(String taskId) {
    _tasks.removeWhere((task) => task.id == taskId);
    notifyListeners();
  }
}
