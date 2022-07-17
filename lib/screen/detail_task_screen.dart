// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:the_todo/constant/colour.dart';
import 'package:the_todo/model/todo.dart';

class DetailTaskScreen extends StatefulWidget {
  const DetailTaskScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _DetailTaskScreenState createState() => _DetailTaskScreenState();
}

class _DetailTaskScreenState extends State<DetailTaskScreen> {
  final List<Todo> listTodo = [];

  @override
  void initState() {
    super.initState();
    listTodo.addAll(<Todo>[
      Todo(
          id_todo: 1,
          task: 2,
          name: 'Firebase Authentication',
          is_complete: true),
      Todo(id_todo: 2, task: 2, name: 'Realtime Database', is_complete: false),
      Todo(id_todo: 3, task: 2, name: 'Cloud Firestore', is_complete: false),
      Todo(id_todo: 4, task: 2, name: 'Storage', is_complete: false),
      Todo(
          id_todo: 5,
          task: 2,
          name: 'Firebase Cloud Message',
          is_complete: false),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colour.blue,
        automaticallyImplyLeading: false,
        title: Text(
          widget.title,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () => Navigator.of(context).pop(),
            iconSize: 28,
            color: Colors.white,
            icon: const Icon(
              Icons.clear_sharp,
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: listTodo.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(listTodo.elementAt(index).name),
          trailing: Checkbox(
            value: listTodo.elementAt(index).is_complete,
            onChanged: (value) {
              Todo result = Todo(
                id_todo: listTodo.elementAt(index).id_todo,
                task: listTodo.elementAt(index).task,
                name: listTodo.elementAt(index).name,
                is_complete: value ?? listTodo.elementAt(index).is_complete,
              );
              setState(() {
                listTodo.setAll(index, [result]);
              });
            },
          ),
        ),
      ),
    );
  }
}
