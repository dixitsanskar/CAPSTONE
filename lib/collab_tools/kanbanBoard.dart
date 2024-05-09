import 'package:flutter/material.dart';

class Task {
  String title;
  String category;
  int priority;

  Task(this.title, this.category, this.priority);
}

class KanbanBoard extends StatefulWidget {
  @override
  _KanbanBoardState createState() => _KanbanBoardState();
}

class _KanbanBoardState extends State<KanbanBoard> {
  List<Task> tasks = [
    Task('Task 1', 'To Do', 1),
    Task('Task 2', 'In Progress', 2),
    Task('Task 3', 'Done', 3),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kanban Board'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildColumn('To Do'),
          _buildColumn('In Progress'),
          _buildColumn('Done'),
        ],
      ),
    );
  }

  Widget _buildColumn(String category) {
    List<Task> tasksInCategory =
        tasks.where((task) => task.category == category).toList();

    return Expanded(
      child: Card(
        margin: EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                category,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
            ),
            Expanded(
              child: DragTarget<Task>(
                onAccept: (task) {
                  setState(() {
                    task.category = category;
                  });
                },
                builder: (context, candidateData, rejectedData) {
                  return ListView.builder(
                    itemCount: tasksInCategory.length,
                    itemBuilder: (context, index) {
                      final task = tasksInCategory[index];
                      return Draggable<Task>(
                        data: task,
                        child: _buildTaskItem(task.title, task.priority),
                        feedback: Material(
                          elevation: 8.0,
                          child: Container(
                            padding: EdgeInsets.all(16.0),
                            child: Text(task.title),
                          ),
                        ),
                        childWhenDragging: _buildTaskItem(task.title, task.priority),
                      );
                    },
                  );
                },
              ),
            ),
            if (category == 'To Do') ...[
              SizedBox(height: 8.0),
              Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: ElevatedButton(
                  onPressed: () {
                    _addTask(category);
                  },
                  child: Text('Add New Task'),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildTaskItem(String title, int priority) {
    return Container(
      padding: EdgeInsets.all(16.0),
      margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
      color: getColorForPriority(priority),
      child: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Color? getColorForPriority(int priority) {
    switch (priority) {
      case 1:
        return Colors.green[100];
      case 2:
        return Colors.yellow[100];
      case 3:
        return Colors.red[100];
      default:
        return Colors.grey[200];
    }
  }

  void _addTask(String category) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        String newTaskTitle = '';
        int newTaskPriority = 1; // Default priority is 1

        return AlertDialog(
          title: Text('Add Task'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                onChanged: (value) {
                  newTaskTitle = value;
                },
                decoration: InputDecoration(labelText: 'Task Title'),
              ),
              SizedBox(height: 16.0),
              DropdownButtonFormField<int>(
                value: newTaskPriority,
                onChanged: (value) {
                  setState(() {
                    newTaskPriority = value!;
                  });
                },
                items: [
                  DropdownMenuItem<int>(
                    value: 1,
                    child: Text('Low Priority'),
                  ),
                  DropdownMenuItem<int>(
                    value: 2,
                    child: Text('Medium Priority'),
                  ),
                  DropdownMenuItem<int>(
                    value: 3,
                    child: Text('High Priority'),
                  ),
                ],
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                if (newTaskTitle.isNotEmpty) {
                  setState(() {
                    tasks.add(Task(newTaskTitle, category, newTaskPriority));
                  });
                  Navigator.of(context).pop();
                }
              },
              child: Text('Add'),
            ),
          ],
        );
      },
    );
  }
}