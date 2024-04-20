import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../logic/controller/task_control.dart';
import '../model/task.dart';

class KanbanBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kanban Board'),
      ),
      body: Row(
        children: [
          Column(
            children: [
              ColumnTitle(title: 'To Do'),
              TaskColumn(status: 'To Do'),
            ],
          ),
          Column(
            children: [
              ColumnTitle(title: 'In Progress'),
              TaskColumn(status: 'In Progress'),
            ],
          ),
          Column(
            children: [
              ColumnTitle(title: 'Done'),
              TaskColumn(status: 'Done'),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Open a dialog to create a new task
          showDialog(
            context: context,
            builder: (context) => NewTaskDialog(),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class ColumnTitle extends StatelessWidget {
  final String title;

  const ColumnTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(title, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
    );
  }
}

class TaskColumn extends StatelessWidget {
  final String status;

  const TaskColumn({required this.status});

  @override
  Widget build(BuildContext context) {
    final tasks = Provider.of<TaskProvider>(context).tasks.where((task) => task.status == status).toList();

    return Expanded(
      child: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          return Draggable(
            child: TaskCard(task: tasks[index]),
            feedback: TaskCard(task: tasks[index], isDragging: true),
            childWhenDragging: SizedBox(),
            data: tasks[index].id,
          );
        },
      ),
    );
  }
}

class TaskCard extends StatelessWidget {
  final Task task;
  final bool isDragging;

  const TaskCard({required this.task, this.isDragging = false});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: isDragging ? 0 : 4,
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: ListTile(
        title: Text(task.title),
        subtitle: Text(task.description),
        onLongPress: () {
          // Delete task on long press
          Provider.of<TaskProvider>(context, listen: false).deleteTask(task.id);
        },
      ),
    );
  }
}

class NewTaskDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TextEditingController titleController = TextEditingController();
    final TextEditingController descriptionController = TextEditingController();

    return AlertDialog(
      title: Text('New Task'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            controller: titleController,
            decoration: InputDecoration(labelText: 'Title'),
          ),
          TextField(
            controller: descriptionController,
            decoration: InputDecoration(labelText: 'Description'),
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () {
            // Create new task and add it to the list
            final taskProvider = Provider.of<TaskProvider>(context, listen: false);
            taskProvider.addTask(Task(
              id: DateTime.now().toString(),
              title: titleController.text,
              description: descriptionController.text,
              status: 'To Do',
            ));
            Navigator.pop(context);
          },
          child: Text('Create'),
        ),
      ],
    );
  }
}