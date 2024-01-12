// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ToDoTile extends StatelessWidget {
  // const ToDoTile({super.key});
  final String taskName;
  final bool taskCompeted;
  Function(bool?)? onChanged;
  Function(BuildContext)? deleteFunction;

  ToDoTile({
    super.key,
    required this.onChanged,
    required this.taskName,
    required this.taskCompeted,
    required this.deleteFunction
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, right: 25, top: 25),
      child:Slidable(
        endActionPane: ActionPane(

motion: StretchMotion(),
children: [
  SlidableAction(onPressed: deleteFunction , 
   icon:Icons.delete,
   backgroundColor: Color.fromARGB(255, 144, 26, 26),
   borderRadius : BorderRadius.circular(15)),
   
 ],
    ),
        child: Container(
          padding: EdgeInsets.all(20),
          child: Row(
            children: [
              //checkbox
              Checkbox(value: taskCompeted,
               onChanged: onChanged,
               activeColor: const Color.fromARGB(255, 106, 44, 44),
               ),
              //task name
              Text(taskName,
              style:TextStyle( fontSize: 20, decoration:taskCompeted  ? TextDecoration.lineThrough : TextDecoration.none),
            ),
            ],
          ),
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 38, 119, 159),
              borderRadius: BorderRadius.circular(15)),
        ),
      ),
    );
  }
}
