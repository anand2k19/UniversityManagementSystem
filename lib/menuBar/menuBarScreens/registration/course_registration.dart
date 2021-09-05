import 'package:dashboard/menuBar/menuBarScreens/registration/registration.dart';
import 'package:flutter/material.dart';

class course_registration extends StatelessWidget {
  final Function select;
  final bool x;
  course_registration(this.x, this.select);

  @override
  Widget build(BuildContext context) {
    List course = [
       ['19CSE301', 'Computer Networking'],
       ['19CSE302', 'Design and Analysis of Algorithm'],
       ['19CSE303', 'Embedded Systems'],
       ['19CSE304', 'Foundations of Data Science'],
       ['19CSE305', 'Machine Learning'],
       ['19ENV300', 'Environmental Science'],
       ['19CSE331', 'Cryptography'],
       ['19SSK301', 'Soft Skill'],
       ['19CSE304', 'Foundations of Data Science'],
       ['19CSE304', 'Foundations of Data Science'],
       ['19CSE304', 'Foundations of Data Science'],
       ['19CSE304', 'Foundations of Data Science'],
       ['19CSE304', 'Foundations of Data Science'],
    ];

    return Expanded(
      child: ListView.builder(
        itemCount: course.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.only(top:2.5,bottom:2.5),
            height: 70,
            child: Card(
              color: Color.fromRGBO(200, 100, 100, 1),
              child: ListTile(
                isThreeLine: true,
                selected: x,
                title: Text('${course[index][0]}'),
                subtitle: Text('${course[index][1]}'),
                trailing: Icon(Icons.check),
                onLongPress: () {
                  select();
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
