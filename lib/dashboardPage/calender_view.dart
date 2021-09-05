import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:table_calendar/table_calendar.dart';





class CalenderPage extends StatefulWidget {
  const CalenderPage({Key? key}) : super(key: key);

  @override
  _CalenderPageState createState() => _CalenderPageState();
}

class _CalenderPageState extends State<CalenderPage> {

  CalendarFormat format = CalendarFormat.month;
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay=DateTime.now();


  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      focusedDay: focusedDay,
      firstDay:DateTime(2000),
      lastDay: DateTime(2050),
      calendarFormat: format,
      onFormatChanged: (CalendarFormat _format){
        setState(() {
          format = _format;
        });
      },

      startingDayOfWeek: StartingDayOfWeek.monday,
      daysOfWeekVisible: true,

      //Day Changed
      onDaySelected: (DateTime selectDay , DateTime focusDay ){
        setState(() {
          selectedDay = selectDay;
          focusedDay = focusDay;
        });
      },
      //To style the calender
      calendarStyle: const CalendarStyle(
         isTodayHighlighted: true,
         selectedDecoration: BoxDecoration(
           color: Colors.amber,
           shape:BoxShape.circle,
         ),
        selectedTextStyle: TextStyle(color: Colors.white),
        todayDecoration: BoxDecoration(
          color: Colors.blueGrey,
          shape: BoxShape.circle,
        ),
      ),

      headerStyle: const HeaderStyle(
        formatButtonVisible: false,
        titleCentered: true,
      ),




      selectedDayPredicate: (DateTime date){
        return isSameDay(selectedDay, date);
      },



    );
  }
}
