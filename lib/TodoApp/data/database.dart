import 'package:hive_flutter/hive_flutter.dart';

class TodoDatabase {
  final _mybox = Hive.box('mybox');

  List todoList = [];

  //run this if this is the first time ever opening the app
  void createInitialData() {
    todoList = [
      ['Become a better person', false],
      ['Read and study more', false],
    ];
  }

  //load data from the database
  void loadData() {
    todoList = _mybox.get('TODOLIST');
  }

  //Update the database
  void updateDatabase() {
    _mybox.put('TODOLIST', todoList);
  }
}
