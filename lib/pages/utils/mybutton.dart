import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  // const MyButton({super.key});
 
 final String text ;
VoidCallback  onPressed ;

 MyButton ({
super.key ,
 required this.text ,
 required this.onPressed ,

});

  @override
  Widget build(BuildContext context) {
    return
    
       MaterialButton(
      
        onPressed: onPressed,
        color:Color.fromARGB(184, 208, 196, 196),
         textColor:Color.fromARGB(255, 73, 69, 65),
         child:Text(text),  shape: RoundedRectangleBorder(
         borderRadius: BorderRadius.circular(10.0), // ajustez le rayon selon vos besoins
  ), 
        
       
     

    );
  }
}