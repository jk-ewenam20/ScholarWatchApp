// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last, camel_case_types

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class coursesTile extends StatelessWidget {

  final String courseName;
  final bool courseChecked;
  Function(bool?)? onChanged;



  coursesTile({
    super.key, 
    required this.courseName, 
    required this.courseChecked, 
    required this.onChanged
    }
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 60),
      child: Container(
        padding: const EdgeInsets.all(24),
        height: 70,
        child: Row(
          children: [
            Checkbox(value: courseChecked, 
            onChanged: onChanged,
            activeColor: Colors.green,),
            Text(courseName),
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.lightBlueAccent,
          borderRadius: BorderRadius.circular(12)
        ),
      ),
    );
  }
}