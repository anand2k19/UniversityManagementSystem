import 'package:dashboard/menuBar/menuBarScreens/registration/course_registration.dart';
import 'package:dashboard/menuBar/menuBarScreens/registration/registration_status.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class registration extends StatefulWidget {
  const registration({Key? key}) : super(key: key);

  @override
  _registrationState createState() => _registrationState();
}

class _registrationState extends State<registration> {
  String semValue = 'Select';
  String regType = 'Regular';

  changeTable() {
    if (semValue == 'S2' && regType == 'Regular') {
      return registration_status2();
    } else if (semValue == 'S5' && regType == 'Regular') {
      return registration_status5();
    } else if (regType == 'ReExam') {
      return Text('No Student Registered!');
    } else {
      return registration_statusx();
    }
  }

  bool x = false;
  bool select() {
    setState(() {
      x = !x;
    });
    return x;
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Registration'),
          bottom: const TabBar(tabs: [
            Tab(
              text: 'Registration Status',
            ),
            Tab(
              text: 'Course Registration',
            ),
          ]),
        ),
        body: TabBarView(
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 50,
                    ),
                    Column(
                      children: [
                        const Text('Select Semester: '),
                        DropdownButton<String>(
                            value: semValue,
                            onChanged: (String? newValue) {
                              setState(() {
                                semValue = newValue!;
                              });
                            },
                            items: <String>[
                              'Select',
                              'S1',
                              'S2',
                              'S3',
                              'S4',
                              'S5',
                              'S6'
                            ].map((String value) {
                              return DropdownMenuItem(
                                child: Text(value),
                                value: value,
                              );
                            }).toList()),
                      ],
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    Column(
                      children: [
                        const Text('Registrstion Type:  '),
                        DropdownButton<String>(
                            value: regType,
                            onChanged: (String? newValue) {
                              setState(() {
                                regType = newValue!;
                              });
                            },
                            items: <String>['Regular', 'ReExam']
                                .map((String value) {
                              return DropdownMenuItem(
                                child: Text(value),
                                value: value,
                              );
                            }).toList()),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                changeTable(),
              ],
            ),
            Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 50,
                    ),
                    Column(
                      children: [
                        const Text('Select Semester: '),
                        DropdownButton<String>(
                            value: semValue,
                            onChanged: (String? newValue) {
                              setState(() {
                                semValue = newValue!;
                              });
                            },
                            items: <String>[
                              'Select',
                              'S1',
                              'S2',
                              'S3',
                              'S4',
                              'S5',
                              'S6'
                            ].map((String value) {
                              return DropdownMenuItem(
                                child: Text(value),
                                value: value,
                              );
                            }).toList()),
                      ],
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    Column(
                      children: [
                        const Text('Registrstion Type:  '),
                        DropdownButton<String>(
                            value: regType,
                            onChanged: (String? newValue) {
                              setState(() {
                                regType = newValue!;
                              });
                            },
                            items: <String>['Regular', 'ReExam']
                                .map((String value) {
                              return DropdownMenuItem(
                                child: Text(value),
                                value: value,
                              );
                            }).toList()),
                      ],
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(right: 20),
                    alignment: Alignment.bottomRight,
                    child: ElevatedButton(
                        onPressed: () {}, child: const Text('Save'))),
                course_registration(x, select),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
