// ignore_for_file: non_constant_identifier_names

class Todo {
  Todo({
    required this.id_todo,
    required this.task,
    required this.name,
    this.is_complete = false,
  });

  final int id_todo;
  final int task;
  final String name;
  final bool is_complete;

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id_todo': id_todo,
      'task': task,
      'name': name,
      'is_complete': is_complete,
    };
  }
}
