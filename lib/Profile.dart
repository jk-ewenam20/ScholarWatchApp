// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 25, bottom: 25),
      child: Container(
        // body: Center(
        //   child: Icon(
        //     Icons.person_2_rounded,
        //     size: 50,
        //     color: Colors.grey,
        //   ),
        // ),
        
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(25),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  // border: Border.all(width: 2, color: Colors.black)
                ),
                child: Icon(
                  Icons.person_2_outlined,
                  size: 90,
                ),
            ),
            ListView(
              itemExtent: 70,
              shrinkWrap: true,
              children: [
                
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft:Radius.circular(10), topRight: Radius.circular(10)),
                    color: Colors.black26,
                  ),
                  child: ListTile(
                    
                    title: Text("NAME:"),
                    contentPadding: EdgeInsets.all(2),
                    // tileColor: Colors.black12,
                    
                    
                  ),
                ),

                ListTile(
                  
                  title: Text("STUDENT ID:"),
                  contentPadding: EdgeInsets.all(15),
                  tileColor: Colors.black12,
                  
                  
                ),

                ListTile(
                  
                  title: Text("PROGRAMME:"),
                  contentPadding: EdgeInsets.all(15),
                  tileColor: Colors.black26,
                  
                  
                ),

                ListTile(
                  
                  title: Text("EMAIL:"),
                  contentPadding: EdgeInsets.all(15),
                  tileColor: Colors.black12,
                  
                  
                ),

                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(bottomLeft:Radius.circular(10), bottomRight: Radius.circular(10)),
                    color: Colors.black26,
                  ),
                  child: ListTile(
                    
                    title: Text("CONTACT:"),
                    contentPadding: EdgeInsets.all(2),
                    
                    // tileColor: Colors.black12,
                    
                    
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
    
  }
}