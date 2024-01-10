// // ignore_for_file: prefer_const_literals_to_create_immutables

// import 'package:flutter/material.dart';


// class CounterPage extends StatefulWidget {
//   const CounterPage({super.key});

//   @override
//   State<CounterPage> createState() => _CounterPageState();
// }

// class _CounterPageState extends State<CounterPage> {

//   int _counter = 0 ;
//     int _countertwo = 0 ;


  
// void _increment() {

// setState(() {
//   _counter ++ ;
// });
// }

// void _decrement() {

// setState(() {
//   _countertwo -- ;
// });
// }


//  @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//   body: Center(
//     child: Column(
//        mainAxisAlignment : MainAxisAlignment.center,
//       children: [
//     Text('this pushed many times : '),

//     Text(
//       _counter.toString(), 
//       style:TextStyle(fontSize: 20),
//     ),
//     ElevatedButton(onPressed: _increment, child: Text("increment !"),
    
//     ),


//        Text(
//       _countertwo.toString(), 
//       style:TextStyle(fontSize: 30),
//     ),
//     ElevatedButton(onPressed: _decrement, child: Text("decrement !"),
    
    
//     ),

    
     
//      ],),
//   )

//     );
//   }
// }