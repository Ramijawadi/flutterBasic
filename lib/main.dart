// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:testapp/pages/first_page.dart';
import 'package:testapp/pages/home_page.dart';
import 'package:testapp/pages/settings_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  List names = ["rami", "alex", "sami", "alex", "sami", "sami", "alex", "sami"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: firstPage(),
        routes: {
          '/firstPage': (context) => (firstPage()),
          '/settingsPage': (context) => (settingsPage()),
          '/homePage': (context) => (homePage()),
        });
  }
}


      
    //   backgroundColor: Color.fromARGB(255, 58, 116, 163),
    //   appBar: AppBar(
    //     title: Text("my app"),
    //       backgroundColor: Color.fromARGB(255, 87, 159, 218),
    //       elevation: 0,
    //       leading: Icon(Icons.menu),
    //       actions : [
    //         IconButton(
    //           onPressed:(){},
    //           icon: Icon(Icons.logout)

    //         ),

    //       ]
    //     ),

    //  body: Center(
    //     child:Container(
    //     height: 300,
    //     width:300,
    //     padding:EdgeInsets.all(20),
    //     decoration: BoxDecoration(
    //     color:Color.fromARGB(255, 31, 147, 197),
    //     borderRadius: BorderRadius.circular(20),


    //     ),
    //     // child: Text("hello rami dev" ,style:TextStyle(color:Colors.white,
    //     // fontWeight: FontWeight.bold,
    //     // fontSize: 40,
        
    //     // ),
        
    //     child: Icon(
    //       Icons.home_filled,
    //       color:Color.fromARGB(255, 248, 241, 240),
    //       size:60,
    //     ),
    //     ),
        
    //     ),


// body:ListView(
//   scrollDirection: Axis.horizontal,
//   children: [

// Container( 
// // height:350,
// width: 300,
// color:Colors.blue[300],


// ),

// Container( 
// // height:350,
// width: 300,
// color:Colors.blue[200],


// ),
// Container( 
// // height:350,
// width: 300,
// color:Colors.blue[100],


// )






// ],)


// body :ListView.builder(
//   itemCount : names.length,
//   itemBuilder: (context , index) => ListTile(
//  title:Text(names[index]),
//   ),
// ),

      
 