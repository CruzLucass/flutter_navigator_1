import 'package:flutter/material.dart';
import 'package:flutter_navigator_1/model/todo.dart';
import 'package:flutter_navigator_1/screens/details_screen.dart';

class TodoScreen extends StatelessWidget {
  const TodoScreen({Key? key, required this.todos}) : super(key: key);

  final List<Todo> todos;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todos'),
      ),
      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(todos[index].title),
            onTap: () {
              Navigator.push(
                (context),
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(todo: todos[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
