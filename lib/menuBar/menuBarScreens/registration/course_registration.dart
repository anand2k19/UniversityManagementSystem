import 'package:dashboard/menuBar/menuBarScreens/registration/registration.dart';
import 'package:flutter/material.dart';

class course_registration extends StatelessWidget {
  final Function select;
  final bool x;
  course_registration(this.x,this.select);

  @override
  Widget build(BuildContext context) {

    List courseCode = ['19CSE301','19CSE302','19CSE303','19CSE304','19CSE305','19ENV300','19CSE331','19SSK301'];

    return Expanded(
            child: ListView.builder(
              itemCount: courseCode.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  
                  color: Colors.red,
                  child: ListTile(
                    
                    selected: x,
                    title: Text('${courseCode[index]}'),
                    subtitle: Text('Design and Analysis of Algorithm'),
                    trailing: Icon(Icons.error),
                    onLongPress: (){select();},
                  ),
                );
              },
            ),
          );
  }
}