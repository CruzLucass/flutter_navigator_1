import 'package:flutter/material.dart';
import 'package:flutter_navigator_1/model/todo.dart';
// import 'package:flutter_navigator_1/screens/first_screen.dart';
// import 'package:flutter_navigator_1/screens/second_screen.dart';
import 'package:flutter_navigator_1/screens/todo_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Navigator 3',
      home: TodoScreen(
        todos: List.generate(
          20,
          (i) => Todo(title: 'Todo $i', description: 'Description of Todo $i'),
        ),
      ),
    );
  }
}
