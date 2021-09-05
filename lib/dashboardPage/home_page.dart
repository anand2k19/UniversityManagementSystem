import 'package:dashboard/subject_page/subjectpage_screens/subject_tabs_screen.dart';
import 'package:flutter/material.dart';

import '../dummy_data.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  bool isSwitched = false;
  bool isButtonDisabled = true;
  var textValue = 'Switch is OFF';




  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(4),
          margin: const EdgeInsets.all(0),
          height: 50.0,
          width: 400.0,
          color: Colors.brown,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
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
                height: 20,
              ),
              // ElevatedButton.icon(
              //   onPressed: isButtonDisabled
              //       ? null
              //       : () {
              //           Navigator.push(
              //             context,
              //             MaterialPageRoute(
              //                 builder: (context) => AddSubject()),
              //           );
              //         },
              //   icon: const Icon(Icons.add),
              //   label: const Text('Add'),
              // ),
            ],
          ),
        ),
        Expanded(
          child: GridView.count(
            padding: const EdgeInsets.all(10),
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 20,
            children: List.generate(subjects.length, (index) {
              return GestureDetector(
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (ctx) => SubjectTabsScreen(
                        subjectCode: subjects[index].subjectCode,
                        subjectName: subjects[index].subjectName,
                        subjectTeacher: subjects[index].subjectTeacher,
                        subjectColor: subjects[index].subjectColor,
                      )),
                ),
                child: Container(
                  height: 100,
                  width: 50,
                  alignment: Alignment.bottomRight,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(
                          begin: Alignment.bottomRight,
                          end: Alignment.topRight,
                          colors: [Colors.lightBlueAccent, Colors.orange]),
                      color: Colors.yellow[100],
                      borderRadius:
                      const BorderRadius.all(Radius.circular(20)),
                      border: Border.all(
                        color: Colors.red,
                        width: 5,
                      )),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(
                        width: 20,
                        height: 20,
                      ),
                      const SizedBox(
                        width: 20,
                        height: 20,
                      ),
                      const SizedBox(
                        width: 20,
                        height: 20,
                      ),
                      Text(
                        subjects[index].subjectCode,
                      ),
                      Text(subjects[index].subjectName),
                    ],
                  ),
                ),
              );
            }),
          ),
        ),
      ],
    );


  }

  void toggleSwitch(bool value) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
        isButtonDisabled = false;
        textValue = 'Switch Button is ON';
      });

    } else {
      setState(() {
        isSwitched = false;
        isButtonDisabled = true;
        textValue = 'Switch Button is OFF';
      });
    }
  }





}
