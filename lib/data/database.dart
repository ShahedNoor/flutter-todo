import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  List todoList = [];

  // Reference our box
  final _myBox = Hive.box('myBox');

  // Create initial data
  void createInitialData() {
    todoList = [
      ["First todo task", false],
      ["Second todo task", false],
      ["Third todo task", false],
    ];
  }

  // Load data from database
  void loadData() {
    todoList = _myBox.get('TODOLIST');
  }

  // Update database
  void updateDatabase() {
    _myBox.put('TODOLIST', todoList);
  }
}
