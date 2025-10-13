/// A simple task model for the todo app.
class Task {
  final String id;
  final String title;
  final bool isCompleted;
  final DateTime? dueDate;
  final String? description;

  Task({
    required this.id,
    required this.title,
    this.isCompleted = false,
    this.dueDate,
    this.description,
  });

  Task copyWith({
    String? id,
    String? title,
    bool? isCompleted,
    DateTime? dueDate,
    String? description,
  }) {
    return Task(
      id: id ?? this.id,
      title: title ?? this.title,
      isCompleted: isCompleted ?? this.isCompleted,
      dueDate: dueDate ?? this.dueDate,
      description: description ?? this.description,
    );
  }
}
