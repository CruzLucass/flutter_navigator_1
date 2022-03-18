import 'package:flutter/material.dart';
import 'package:flutter_navigator_1/model/todo.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key, required this.todo}) : super(key: key);
  final Todo todo;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(todo.title),
      ),
      body: Padding(
          padding: const EdgeInsets.all(16.0), child: Text(todo.description)),
    );
  }
}
