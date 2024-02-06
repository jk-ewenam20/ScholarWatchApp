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
    ["First course", false],
    ["Some course", false],
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
        label: Text("Register"),
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