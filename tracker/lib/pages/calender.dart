import 'package:flutter/material.dart';

import 'package:table_calendar/table_calendar.dart';

class CalendarPage extends StatefulWidget {
  @override
  _CalendarPageState createState() => _CalendarPageState();
  
}

class _CalendarPageState extends State<CalendarPage> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _selectedDay = DateTime.now();
  DateTime _focusedDay = DateTime.now();
  Set<DateTime> _selectedDays = {};

  void _onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    setState(() {
      _selectedDay = selectedDay;
      _focusedDay = focusedDay;
      _selectedDays = {
        selectedDay,
        selectedDay.add(Duration(days: 1)),
        selectedDay.add(Duration(days: 2)),
        selectedDay.add(Duration(days: 3)),
        selectedDay.add(Duration(days: 4)),
      };
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.black,
      body: Column(
        children: [

          Container(
            height: 45,
            width: double.infinity,
         decoration:   BoxDecoration(
  borderRadius: BorderRadiusDirectional.circular(30),
              color: Colors.deepPurple,


),
            child: Center(child: Text('Select days',style: TextStyle(fontSize: 30,color: Colors.white),))),
          Container(
        
decoration: BoxDecoration(
  borderRadius: BorderRadiusDirectional.circular(30),
              color: Colors.white,


),
            margin: const EdgeInsets.all(40.0),
            child: TableCalendar(
             
              calendarFormat: _calendarFormat,
              selectedDayPredicate: (day) {
                return _selectedDays.contains(day);
              },
              onDaySelected: _onDaySelected,
              calendarStyle: CalendarStyle(
                selectedDecoration: BoxDecoration(
                 
                  color:Colors.deepPurple,
                  shape: BoxShape.circle,
                ),
                weekendTextStyle: TextStyle(color: Colors.red),
                // defaultTextStyle: TextStyle(color: Colors.white),
                outsideTextStyle: TextStyle(),
                // selectedTextStyle: TextStyle(color: Colors.white),
              ),
              daysOfWeekStyle: DaysOfWeekStyle(
                weekendStyle: TextStyle(color: Colors.red),
              ),
              headerStyle: HeaderStyle(
                formatButtonVisible: false,
              ),
              firstDay: DateTime.utc(2023, 1, 1),
              lastDay: DateTime.utc(2030, 12, 31),
              focusedDay: _focusedDay,
              // Display the button below the calendar
              
            ),
          ),
        ],
      )
    );
  }
}
