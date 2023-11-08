import 'package:flutter/material.dart';
import 'package:mitch_koko/TodoApp/todo_app_home_page.dart';

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const TodoAppHomePage(),
      theme: ThemeData(primarySwatch: Colors.yellow),
    );
  }
}
