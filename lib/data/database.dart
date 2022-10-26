import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  List todoList = [];
//refrence the box

  final _myBox = Hive.box('mybox');

  //run this if app gets open first time

  void createIntialData() {
    todoList = [
      ['Do Exercise', false],
      ['Read a Book', false]
    ];
  }

  //load data from database
  void loadData() {
    todoList = _myBox.get("TODOLIST");
  }

  //update the data
  void updateData() {
    _myBox.put("TODOLIST", todoList);
  }
}
