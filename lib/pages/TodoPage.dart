import 'package:flutter/material.dart';

class TodoPage extends StatefulWidget {
   TodoPage({super.key});

  @override
  State<TodoPage> createState() => _nameState();
 }
class _nameState extends State<TodoPage> {

  void _getter() {

print(myController.text);

  }
  TextEditingController myController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
         children: [
        TextField(
         controller:myController , ),
         ElevatedButton(onPressed: _getter, 
         child: Text("press button"))
      ],
    )
   )
    );
  }
}