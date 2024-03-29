// ignore_for_file: prefer_const_constructors, deprecated_member_use, sort_child_properties_last, prefer_const_literals_to_create_immutables


import 'package:firstapp/Courses.dart';
import 'package:firstapp/Homepage.dart';
import 'package:firstapp/Profile.dart';
import 'package:firstapp/Sign_in.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class FirstPage extends StatefulWidget {
  FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int _selectedIndex = 0;

  final List _pages = [
    HomePage(),

    Profile(),

    Courses(),

  ];

  
  void _navigateBottonBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        actions: [IconButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => SignIn(),),);}, icon: Icon(Icons.logout_rounded)),],
        automaticallyImplyLeading: false,
      //   // centerTitle: true,
      //   // title: Text(
      //   //   "FIRST PAGE",
      //   // ),
      //   // titleTextStyle: TextStyle(
      //   //   color: Colors.white,
      //   //   fontWeight: FontWeight.bold,
      //   // ),
      //   backgroundColor: Color.fromARGB(255, 71, 84, 107),
      ),
      
      body: _pages[_selectedIndex],
      

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottonBar,
        backgroundColor: Colors.white,
        selectedLabelStyle: TextStyle(
          color: Colors.black,
        ),
        unselectedLabelStyle: TextStyle(
          color: Colors.black,
        ),
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.black,
        
        type: BottomNavigationBarType.fixed,
       
       
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_rounded,),
          label: 'Home',
          
          ),

          BottomNavigationBarItem(icon: Icon(Icons.person_4_rounded,),
          label: 'Profile',
          ),

          BottomNavigationBarItem(icon: Icon(Icons.book_rounded,),
          label: 'Courses',
          ),
          
          
        ],
      ),


    
    );
  }
}