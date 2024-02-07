// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, duplicate_ignore, camel_case_types

import 'package:flutter/material.dart';

class reg_pop extends StatelessWidget {
  const reg_pop({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return  Center(
      
      child: Padding(
        padding: const EdgeInsets.only(top: 200, bottom: 200),
        
        child: Container(
          padding: EdgeInsets.all(15),
          height: 210,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(width: 3, color: Colors.lightGreen),
          ),
          child: Column(
            children: [
              
              Container(
                padding: EdgeInsets.all(25),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(width: 5, color: Colors.lightGreen)
                ),
                child: Icon(
                  Icons.check,
                  size: 50,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, top: 10, bottom: 10),
                child: Text("Registration Successful !!...",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                ),
              ),
            ],
          ),
        ),
        
      ),
    );
  }
}