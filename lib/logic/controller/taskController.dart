

import 'package:get/get.dart';

import '../../model/task.dart';

class TaskController extends GetxController {
  var tasks = <Task>[
    Task(id: '1', title: 'Task 1', description: 'Description 1', status: 'To Do'),
    Task(id: '2', title: 'Task 2', description: 'Description 2', status: 'In Progress'),
    Task(id: '3', title: 'Task 3', description: 'Description 3', status: 'Done'),
  ].obs;

  void moveTask(String taskId, String newStatus) {
    final index = tasks.indexWhere((task) => task.id == taskId);
    if (index != -1) {
      tasks[index].status = newStatus;
    }
  }

  void addTask(Task task) {
    tasks.add(task);
  }

  void deleteTask(String taskId) {
    tasks.removeWhere((task) => task.id == taskId);
  }
}
