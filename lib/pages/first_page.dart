// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types

import "package:flutter/material.dart";
import "package:testapp/pages/home_page.dart";
import "package:testapp/pages/profile_page.dart";
import "package:testapp/pages/settings_page.dart";
// import "package:testapp/pages/secont_page.dart";

class firstPage extends StatefulWidget {
   firstPage({super.key});

  @override
  State<firstPage> createState() => _firstPageState();
}

class _firstPageState extends State<firstPage> {
   //truk the selected page
int _selectedItem = 0;

//methode to change delected pages
void _navigateBottomBar ( int index) {

setState(() {
  _selectedItem = index ;
});

}

  final List _pages = [
homePage(),
profilePage(),
settingsPage(),
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 136, 170, 198),

      appBar: AppBar(
        title: Text("1er page navigation"),
        backgroundColor: Color.fromARGB(255, 197, 203, 195),


       ),   

       body: _pages[_selectedItem],

      bottomNavigationBar: BottomNavigationBar(
          currentIndex : _selectedItem ,
          onTap:_navigateBottomBar,
        items: [

    BottomNavigationBarItem(
    
      icon: Icon(Icons.home),
      label:"Home",

    ),

     BottomNavigationBarItem(
      icon: Icon(Icons.person),
      label:"Profile",

    ),

     BottomNavigationBarItem(
      icon: Icon(Icons.settings),
      label:"Settings",

    ),
      ]),
//        drawer: Drawer(backgroundColor:Color.fromARGB(255, 170, 185, 212),
       
//        child:Column(children: [
        
//      DrawerHeader(child:
//      Icon(
//       Icons.favorite,
//       size:48,
//      ),
     
//       ),
//       ListTile (
//            // ignore: prefer_const_constructors
//            leading: Icon(Icons.home),
//            title:Text("H O M E"),
//           onTap: () {
//                         //used to return to the menu closed not drawer opened

//              Navigator.pop(context);
// Navigator.pushNamed(context, '/homePage');

//             //go to home page
//           },
//       ),
//          ListTile (
//            leading: Icon(Icons.settings),
//            title:Text("S E T T I N G S"),
//            onTap: (){
//             //used to return to the menu closed not drawer opened
//              Navigator.pop(context);
//  Navigator.pushNamed(context, '/settingsPage');

//             //got to settings page
//            },

//       ),

//        ],)
       
       
//        ),
//       body:Center(
//       child: ElevatedButton(
//        child: Text("go to second page"),
//         onPressed: (){


  
//       Navigator.pushNamed(context, '/secondPage');

//      Navigator.push(
//         context,
//        MaterialPageRoute(
//         builder: (context) => first_page(),
//        ),
//        );
    
//           Navigator.push(
//             context,
//           MaterialPageRoute(
//             builder: (context)=> second_page(),
//           ),
//           );

// go to 2nd page 
//         },
//       )
     
    
//     ),
    );
  }
}