import './registration.dart';
import 'package:flutter/material.dart';

class course_registration extends StatefulWidget {
  final Function isSelected;
  course_registration(this.isSelected);

  @override
  _course_registrationState createState() => _course_registrationState();
}

class _course_registrationState extends State<course_registration> {
  
  @override
  Widget build(BuildContext context) {
    // List course = [
    //   [ListItem<String>('19CSE301'), ListItem<String>('Computer Networking')],
    //   [
    //     ListItem<String>('19CSE302'),
    //     ListItem<String>('Design and Analysis of Algorithm')
    //   ],
    //   [ListItem<String>('19CSE303'), ListItem<String>('Embedded Systems')],
    //   [
    //     ListItem<String>('19CSE304'),
    //     ListItem<String>('Foundations of Data Science')
    //   ],
    //   [ListItem<String>('19CSE305'), ListItem<String>('Machine Learning')],
    //   [ListItem<String>('19ENV300'), ListItem<String>('Environmental Science')],
    //   [ListItem<String>('19CSE331'), ListItem<String>('Cryptography')],
    //   [ListItem<String>('19SSK301'), ListItem<String>('Soft Skill')],
    //   [
    //     ListItem<String>('19CSE304'),
    //     ListItem<String>('Foundations of Data Science')
    //   ],
    //   [
    //     ListItem<String>('19CSE304'),
    //     ListItem<String>('Foundations of Data Science')
    //   ],
    //   [
    //     ListItem<String>('19CSE304'),
    //     ListItem<String>('Foundations of Data Science')
    //   ],
    //   [
    //     ListItem<String>('19CSE304'),
    //     ListItem<String>('Foundations of Data Science')
    //   ],
    //   [
    //     ListItem<String>('19CSE304'),
    //     ListItem<String>('Foundations of Data Science')
    //   ],
    // ];

    List cor = [
      ListItem<Map>({0:'19CSE301',1:'Foundations of Data Science'}),
      ListItem<Map>({0:'19CSE301',1:'Foundations of Data Science'}),
      ListItem<Map>({0:'19CSE301',1:'Foundations of Data Science'}),
      ListItem<Map>({0:'19CSE301',1:'Foundations of Data Science'}),
      ListItem<Map>({0:'19CSE301',1:'Foundations of Data Science'}),
      ListItem<Map>({0:'19CSE301',1:'Foundations of Data Science'}),
      ListItem<Map>({0:'19CSE301',1:'Foundations of Data Science'}),
      ListItem<Map>({0:'19CSE301',1:'Foundations of Data Science'}),
      ListItem<Map>({0:'19CSE301',1:'Foundations of Data Science'}),
      ListItem<Map>({0:'19CSE301',1:'Foundations of Data Science'}),
      ListItem<Map>({0:'19CSE301',1:'Foundations of Data Science'}),
      ListItem<Map>({0:'19CSE301',1:'Foundations of Data Science'})
    ];

    return Expanded(
      child: ListView.builder(
        itemCount: cor.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: const EdgeInsets.only(top: 2.5, bottom: 2.5,right: 15,left: 15),
            height: 70,
            child: Card(
              child: ListTile(
                selected: cor[index].isSelected,
                title: Text('${cor[index].data[0]}${cor[index].isSelected}'),
                subtitle: Text('${cor[index].data[1]}'),
                trailing: const Icon(Icons.check),
                onTap: () => widget.isSelected(cor[index]),
                // onTap: () {
                //   if (cor.any((item) => item.isSelected)) {
                //     setState(() {
                //       cor[index].isSelected =
                //           !cor[index].isSelected;
                //     });
                //   }
                // },
              ),
            ),
          );
        },
      ),
    );
  }
}



