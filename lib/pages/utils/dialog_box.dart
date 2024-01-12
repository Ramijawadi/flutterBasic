// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:testapp/pages/utils/mybutton.dart';

class DialogBox extends StatelessWidget {
  final controller ;
VoidCallback onSave ;
VoidCallback onCancel ;

   DialogBox({super.key ,
  required this.controller,
    required this.onSave,
      required this.onCancel,


  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor:Color.fromARGB(223, 26, 112, 169),
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
             
                border: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Color.fromARGB(255, 233, 224, 224)), 
                    // Couleur de la bordure
                      borderRadius: BorderRadius.circular(10.0), // Rayon de coin
                ),
                
                hintText: "Add new task ..",
                hintStyle: TextStyle(color: Color.fromARGB(179, 232, 227, 227)),
                
                
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MyButton(text: "save", onPressed: onSave),
               
                MyButton(text: "cancel", onPressed: onCancel),
              ],
            )

            //button save or cancel
          ],
        ),
      ),
    );
  }
}
