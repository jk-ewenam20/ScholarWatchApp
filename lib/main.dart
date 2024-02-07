// ignore_for_file: prefer_const_constructors

import 'package:firstapp/Homepage.dart';
import 'package:firstapp/Profile.dart';
import 'package:firstapp/detailEvent.dart';
import 'package:firstapp/firstpage.dart';
import 'package:firstapp/Sign_in.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignIn(),
      routes: {
        '/firstpage':(context) => FirstPage(),
        '/Homepage':(context) => HomePage(),
        '/Profile':(context) => Profile(),
        '/Sign in':(context) => HomePage(),
        // '/L O G O U T':(context) => SignIn(),
        '/detailEvent':(context) => DetailEvents(),
      },
    );
  }
}