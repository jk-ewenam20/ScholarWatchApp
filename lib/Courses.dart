// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables, unused_label, dead_code, non_constant_identifier_names

import 'package:firstapp/courses_tile.dart';
import 'package:firstapp/utilities/registration_popup.dart';
import 'package:flutter/material.dart';

class Courses extends StatefulWidget {
  const Courses({super.key});

  @override
  State<Courses> createState() => _CoursesState();
}

class _CoursesState extends State<Courses> {
  List coursesList = [
    ["Database Systems Design, CPEN 211", false],
    ["C++ Programming, CPEN 201", false],
    ["Programming for Engineers, SENG 207", false],
    ["Linear Algebra, SENG 201", false],
    ["Discrete Mathematics, CPEN 213", false],
    ["Digital Circuits, CPEN 203", false],
    
  ];

  void checkBoxChanged(bool? p0, int index) {
    setState(() {
      coursesList[index][1] = !coursesList[index][1];
    });
  }

  void reg_popup() {
    showDialog(context: context, builder: (context) {
      return reg_pop();
    },);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: coursesList.length,
        itemBuilder: (context, index) {
          return coursesTile(
            courseName: coursesList[index][0], 
            courseChecked:coursesList[index][1], 
            onChanged: (p0) => checkBoxChanged(p0, index),);
            },
        ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: reg_popup,
        backgroundColor: Colors.tealAccent,
        label: 
          Text("Register",
              style: TextStyle(
                color: Colors.black,
              ),
        ),
          ),
            
            
          
        // style: ElevatedButton.styleFrom(
        //   shape: RoundedRectangleBorder(
        //     borderRadius: BorderRadius.circular(5),
        //   ),
        //   padding: EdgeInsets.only(top: 10, right: 10, left: 10, bottom: 10),
        //   backgroundColor: Colors.lightGreenAccent,
        // ),
        
      
      

      
    );

 
  }
}