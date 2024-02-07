// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

import 'package:syncfusion_flutter_calendar/calendar.dart';


class DetailEvents extends StatelessWidget {
  const DetailEvents({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: true,
        leading: IconButton(onPressed: () => Navigator.of(context).pop(),icon: Icon(Icons.arrow_back_ios)),
        
      ),
      body: Padding(
        padding: const EdgeInsets.only(top:150, bottom: 150, left: 15, right: 15),
        child: SfCalendar(
          view: 
            CalendarView.month,
              monthViewSettings: 
                MonthViewSettings(
                  showTrailingAndLeadingDates: false,
                  showAgenda: true,
                  agendaStyle: AgendaStyle(
                        
                      ),
                  monthCellStyle: MonthCellStyle(
                  backgroundColor: Colors.white,
                  todayBackgroundColor: Colors.white
                      )
                    ),
        ),
      ),
    );
  }
}