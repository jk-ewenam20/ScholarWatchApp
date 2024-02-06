// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, duplicate_ignore, camel_case_types

import 'package:flutter/material.dart';

class reg_pop extends StatelessWidget {
  const reg_pop({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return  Padding(
      padding: const EdgeInsets.all(50),
      
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(30),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              border: Border.all(width: 5, color: Colors.lightGreen)
            ),
            child: Icon(
              Icons.check,
            ),
          ),
          Text("Registration Successful"),
        ],
      ),
      
    );
  }
}