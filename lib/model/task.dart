// ignore_for_file: non_constant_identifier_names

class Task {
  Task({required this.id_task, required this.title});

  final int id_task;
  final String title;

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id_task': id_task,
      'title': title,
    };
  }
}
