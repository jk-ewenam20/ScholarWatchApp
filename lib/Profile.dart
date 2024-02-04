// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Icon(
          Icons.person_2_rounded,
          size: 50,
          color: Colors.grey,
        ),
      ),
      backgroundColor: Colors.white, 
    );
  }
}