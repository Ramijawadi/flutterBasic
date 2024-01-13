// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:testapp/data/database.dart';
import 'package:testapp/pages/utils/dialog_box.dart';
import 'package:testapp/pages/utils/todo_tile.dart';

class TodoApp extends StatefulWidget {
  const TodoApp({super.key});

  @override
  State<TodoApp> createState() => _TodoAppState();
}

class _TodoAppState extends State<TodoApp> {
  //reference the box 
    final _myBox = Hive.box('mybox');
  // add the controller 
  final _controller = TextEditingController();
  
  todoListDataBase db = todoListDataBase();
 @override
  void initState() {
    if(_myBox.get('TODOLIST') == null){

      db.createInitialData();
    }
    else{

      db.loadData();
    }
    super.initState();
  }
 

  void checkbocChanged(bool? value, int index) {
    setState(() {
      db.todoList[index][1] = !db.todoList[index][1];
    });
    db.updateData();
  }

  void saveTask() {

    setState(() {
      db.todoList.add([_controller.text , false]);
      _controller.clear();
    });
    Navigator.of(context).pop();
    db.updateData();
  }
//create task
  void createNewTask() {
    showDialog(
        context: context,
        builder: (context) {
          return DialogBox(
            controller: _controller,
            onSave: saveTask,
            onCancel: () => Navigator.of(context).pop(),
          );
        });
  }

  //remove task 

  void deleteTask(int index) {

    setState(() {
      db.todoList.removeAt(index);
    });
        db.updateData();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[300],
      appBar: AppBar(
        backgroundColor: Colors.blue[500],
        title: Center(
          child: Text("To Do App"),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: createNewTask,
        child: Icon(Icons.add),
        backgroundColor: Colors.blueAccent,
      ),
      body: ListView.builder(
        itemCount: db.todoList.length,
        itemBuilder: (context, index) {
          return ToDoTile(
              onChanged: (value) => checkbocChanged(value, index),
              taskName: db.todoList[index][0],
              taskCompeted: db.todoList[index][1],deleteFunction: (context) => deleteTask(index),
          );
        },
      ),
    );
  }
}
