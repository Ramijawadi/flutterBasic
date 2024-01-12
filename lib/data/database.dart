import 'package:hive_flutter/hive_flutter.dart';

class todoListDataBase {


List todoList = [];

  //refernce of box

  final _myBox = Hive.box('mybox');

 // run when open app first time
  void createInitialData () {
 todoList = [
  
 ["do something" , false],
  ["go to my home" , true],
    ["go to my cinema" , false],

];

  }
 //load data from the database
  void loadData() {
  todoList = _myBox.get('todolist');
  }

  //update data 

  void updateData() {
_myBox.put("todolist" , todoList);
   


  }
}