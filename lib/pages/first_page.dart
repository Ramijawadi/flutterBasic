// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";
// import "package:testapp/pages/secont_page.dart";

class first_page extends StatelessWidget {
  const first_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 136, 170, 198),

      appBar: AppBar(
        title: Text("1er page navigation"),
        backgroundColor: Color.fromARGB(255, 197, 203, 195),


       ),   
       drawer: Drawer(backgroundColor:Color.fromARGB(255, 170, 185, 212),
       
       child:Column(children: [
        
     DrawerHeader(child:
     Icon(
      Icons.favorite,
      size:48,
     ),
     
      ),
      ListTile (
           // ignore: prefer_const_constructors
           leading: Icon(Icons.home),
           title:Text("H O M E"),
          onTap: () {
Navigator.pushNamed(context, '/homePage');
            //go to home page
          },
      ),
         ListTile (
           leading: Icon(Icons.settings),
           title:Text("S E T T I N G S"),
           onTap: (){
 Navigator.pushNamed(context, '/settingsPage');
            //got to settings page
           },

      ),

       ],)
       
       
       ),
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