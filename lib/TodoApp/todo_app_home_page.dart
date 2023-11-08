import 'package:flutter/material.dart';
import 'package:mitch_koko/TodoApp/Utilities/dialog_box.dart';
import 'package:mitch_koko/TodoApp/Utilities/todo_tile.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:mitch_koko/TodoApp/data/database.dart';

class TodoAppHomePage extends StatefulWidget {
  const TodoAppHomePage({super.key});

  @override
  State<TodoAppHomePage> createState() => _TodoAppHomePageState();
}

class _TodoAppHomePageState extends State<TodoAppHomePage> {
  //refrence the hive box
  final _mybox = Hive.box('mybox');

  //Text controller
  final _controller = TextEditingController();

  //Instance of the todo database
  TodoDatabase db = TodoDatabase();

  //init state
  @override
  void initState() {
    super.initState();
    //If this is the first time ever opening the app
    if (_mybox.get('TODOLIST') == null) {
      db.createInitialData();
    } else {
      //there already exist data
      db.loadData();
    }
  }

  // check box function
  void checkBoxChanged(bool? value, int index) {
    setState(() {
      db.todoList[index][1] = !db.todoList[index][1];
      db.updateDatabase();
    });
  }

  //delete task
  void deleteTask({int? index}) {
    setState(() {
      db.todoList.removeAt(index!);
      db.updateDatabase();
    });
  }

  //save new task
  void saveNewTask(BuildContext context) {
    setState(() {
      db.todoList.add([_controller.text, false]);
      _controller.clear();
    });
    Navigator.of(context).pop();
    db.updateDatabase();
  }

  void createNewTask() {
    showDialog(
        context: context,
        builder: (context) {
          return DialogBox(
            controller: _controller,
            onSave: () {
              saveNewTask(context);
            },
            onCancel: () => Navigator.of(context).pop(),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TODO'),
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: Colors.yellow[200],
      body: ListView.builder(
          itemCount: db.todoList.length,
          itemBuilder: (BuildContext context, index) {
            return TodoTile(
              taskName: db.todoList[index][0],
              taskCompleted: db.todoList[index][1],
              onChanged: (value) {
                checkBoxChanged(value, index);
              },
              deleteFunction: (context) => deleteTask(index: index),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: createNewTask,
        child: const Icon(Icons.add),
      ),
    );
  }
}
