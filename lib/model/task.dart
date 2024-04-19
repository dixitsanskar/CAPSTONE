

class Task {
  final String id;
  final String title;
  final String description;
  String status; // Can be "To Do", "In Progress", or "Done"

  Task({
    required this.id,
    required this.title,
    required this.description,
    required this.status,
  });
}