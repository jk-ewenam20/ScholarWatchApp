// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:firstapp/courses_tile.dart';
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
    );

 
  }
}