// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      
      children: [
        Padding(
          padding: EdgeInsets.only(top:10, right: 230),
          child: Container(
            height: 50,
            decoration: BoxDecoration(
              
            ),
            child: 
            Text("Welcome          , ",
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 20,
              fontFamily: "Georgia"
            ),
            ),
          ),
          
          
        ),
        Padding(
          padding: EdgeInsets.only(top:5, right: 10, left: 10, bottom: 10),
          child: Container(
            height: 39,
            decoration: BoxDecoration(
            border: Border(
              // bottom: BorderSide(width: 1, color: Colors.black)
            )  
            ),
            child: 
            Row(
              children: [
                Icon(Icons.push_pin, color: Colors.red,),
                Text("Courses are available for Registration. Navigate to \nCOURSES to register!",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 13,
                  fontFamily: "Georgia",
                  backgroundColor: Colors.yellowAccent,
                  fontWeight: FontWeight.bold
                ),
                ),
              ],
            ),
          ),
          
          
        ),
        SingleChildScrollView(
          padding: EdgeInsets.only(top: 1, left: 10, right: 10, bottom: 20),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  height: 200,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(image: AssetImage("assets/images/shahadat-rahman-BfrQnKBulYQ-unsplash.jpg"),
                    fit: BoxFit.fill,)
                  ),

                ),
                ),

                Padding(
                padding: EdgeInsets.all(10),
                
                child: Container(
                  height: 200,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(image: AssetImage("assets/images/chad-stembridge-V2bG_Z_IpN0-unsplash.jpg"),
                    fit: BoxFit.fill,)
                  ),

                ),
                ),

                Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  height: 200,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(image: AssetImage("assets/images/jaredd-craig-HH4WBGNyltc-unsplash.jpg"),
                    fit: BoxFit.fill,)
                  ),

                ),
                ),

                Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  height: 200,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(image: AssetImage("assets/images/thisisengineering-raeng-ptnM45oZkcw-unsplash.jpg"),
                    fit: BoxFit.fill,)
                  ),

                ),
                ),
            ],
          ),
        ),
        // Padding(
          
        //   ),
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(right: 270,),
                child: Row(
                  children: [
                    Icon(Icons.calendar_month),
                    Text("  UPCOMING"),
                  ],
                ),
              ),
              Container(
                height: 316,
                // padding: EdgeInsets.only(top: 70, left: 20, right: 20, bottom: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white
                ),
                child: SfCalendar(
                  view: CalendarView.month,
                  monthViewSettings: MonthViewSettings(
                    showTrailingAndLeadingDates: false,
                    showAgenda: false,
                    agendaStyle: AgendaStyle(
                      
                    ),
                    monthCellStyle: MonthCellStyle(
                      backgroundColor: Colors.white,
                      // trailingDatesBackgroundColor: Colors.lightGreenAccent,
                      // leadingDatesBackgroundColor: Colors.green,
                      todayBackgroundColor: Colors.white
                    )
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}