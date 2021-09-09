import './course_registration.dart';
import './registration_status.dart';
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

  bool reg_mode = false;

  changeTable() {
    if (semValue == 'S2' && regType == 'Regular') {
      return const registration_status2();
    } else if (semValue == 'S5' && regType == 'Regular') {
      return const registration_status5();
    } else if (regType == 'ReExam') {
      return const Text('No Student Registered!');
    } else {
      return const Text('No Student Registered Yet!');
    }
  }

  void isSelected(ListItem<Map> course) {
    setState(() {
      course.isSelected = true;
    });
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
                Row(children: [
                  const SizedBox(
                    width: 30,
                  ),
                  reg_mode ? const Text('Admin') : const Text('Student'),
                  Switch(
                      activeColor: Theme.of(context).primaryColor,
                      value: reg_mode,
                      onChanged: (x) {
                        setState(() {
                          reg_mode = x;
                        });
                      }),
                  const SizedBox(
                    width: 120,
                  ),
                  if (reg_mode)
                    FlatButton(
                      onPressed: () {},
                      child: const Text('ADD Course'),
                      color: Theme.of(context).primaryColor,
                      textColor: Colors.white,
                    ),
                ]),
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
                    margin: const EdgeInsets.only(right: 20),
                    alignment: Alignment.bottomRight,
                    child: ElevatedButton(
                        onPressed: () {}, child: const Text('Save'))),
                course_registration(isSelected),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ListItem<T> {
  bool isSelected = false;
  T data;
  ListItem(this.data);
}
