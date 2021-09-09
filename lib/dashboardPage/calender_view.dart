import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:table_calendar/table_calendar.dart';
import '../models/live_class.dart';
import 'add_subject.dart';

class CalenderPage extends StatefulWidget {
  CalenderPage({Key? key}) : super(key: key);
  @override
  _CalenderPageState createState() => _CalenderPageState();
}
class _CalenderPageState extends State<CalenderPage> {

  CalendarFormat format = CalendarFormat.month;
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay=DateTime.now();
  bool isSwitched = false;
  bool isVisible = false;
  TextEditingController classController = TextEditingController();
  TextEditingController startTimeController = TextEditingController();
  TextEditingController endTimeController = TextEditingController();
  final List<LiveClass> entries =<LiveClass> [];
  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      child: Column(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(4),
          margin: const EdgeInsets.all(0),
          height: 50.0,
          width: 400.0,
          color: Colors.brown,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children:  [
              const Text(
                'Admin',
                style: TextStyle(
                  color: Colors.lime,
                ),
              ),

              Switch(
                onChanged: toggleSwitch,
                value: isSwitched,
                activeColor: Colors.green,
                activeTrackColor: Colors.white,
                inactiveThumbColor: Colors.red,
                inactiveTrackColor: Colors.white,
              ),
              const SizedBox(
                width: 20,
                height: 40,
              ),
              Visibility(
                visible: isVisible,
                child: ElevatedButton.icon(
                  onPressed: ()
                  {
                    showAlertDialog(context);
                  },
                  icon: const Icon(Icons.add),
                  label: const Text('Add'),
                ),
              ),
            ],
          ),
        ),
        TableCalendar(
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
            print(selectDay);
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
        ),
        Container(
          child:  const Center(child: Text('Events',style: TextStyle(fontSize:25),),),
          width: 300,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        const SizedBox(width: 10,height: 20,),
        SingleChildScrollView(
          child:Container(
          height:200,
          width: 500,
          child:
          ListView.builder(
              itemCount: entries.length,
              itemBuilder: (context,index){
                return Stack(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.fromLTRB(22, 10, 0, 0),
                      decoration:  BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      width: 350,
                      height:100,
                      child: Row(
                        children: [
                          Container(
                              margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                              decoration:  BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              width: 200,
                              height:60,
                              child: Stack(
                                children: [
                                  Positioned(
                                      top:10,
                                      left: 10,
                                      child: Text(entries[index].subjectCode,style: const TextStyle(fontSize: 20),)
                                  ),
                                  Positioned(
                                      top:35,
                                      left: 20,
                                      child: Text(entries[index].date)
                                  ),

                                ],
                              )
                          ),

                          Container(
                              margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                              decoration:  BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              width: 120,
                              height:60,
                              child: Stack(
                                children: [
                                  Positioned(
                                      top:20,
                                      left: 7,

                                      child: Text('${entries[index].startTime}  - ')
                                  ),
                                  Positioned(
                                      top:20,
                                      right:5,
                                      child: Text(entries[index].endTime)
                                  ),
                                ],
                              )
                          ),
                        ],
                      ),
                    )
                  ],
                );
              },
            ),
          ),
        ),
      ],
    ),);
  }
  void toggleSwitch(bool value) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
        isVisible=true;
      });

    } else {
      setState(() {
        isSwitched = false;
        isVisible=false;
      });
    }
  }

  void showAlertDialog(BuildContext context)
  {
    int _value=1;
    final List<int> items =<int> [1,2,3,4,5,6,7,8,9,10,11,12];
    var newFormat= DateFormat('dd-MM-yy');
    String newTime= newFormat.format(selectedDay);
    var alertDialog =   AlertDialog(
      title: const Text('Add Classes'),
      content : SingleChildScrollView(
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            const Text('Enter the Subject Code and time of class'),
            const SizedBox(
              height: 20,
              width:10,
            ),
            TextField(
              controller: classController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Subject Code',
              ),
            ),
            const SizedBox(height: 20,width: 10,),
            TextField(
              controller:startTimeController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Starting Time',
                hintText: 'Enter in hh:mm AM/PM format',
              ),
            ),
            const SizedBox(height: 20,width: 10,),
            TextField(
              controller: endTimeController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Ending Time',
                hintText: 'Enter in hh:mm AM/PM format',
              ),
            ),
            const SizedBox(height: 20,width: 10,),
            Text('Date: $newTime'),
          ],
        ),
      ),
      actions: <Widget> [
        FlatButton(
          color: Colors.amber,
          textColor: Colors.black,
          child: Text('Cancel'),
          onPressed: (){
            setState(() {
              Navigator.pop(context);
            });
          },
        ),
         FlatButton(
            child: Text('Submit'),
          color: Colors.amber,
            textColor:Colors.black,
            onPressed: (){
              setState(() {
                entries.add(
                  LiveClass(subjectCode: classController.text, startTime: startTimeController.text, endTime: endTimeController.text, date: newTime)
                );
                classController.clear();
                startTimeController.clear();
                endTimeController.clear();
                Navigator.pop(context);
              });
            },
        )
      ],
    );
    showDialog(
      context:context,
      builder: (BuildContext context){
        return alertDialog;
      }
    );
  }
}
