import 'package:dashboard/menuBar/menuBarScreens/registration/course_registration.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

class registration extends StatefulWidget {
  const registration({Key? key}) : super(key: key);

  @override
  _registrationState createState() => _registrationState();
}

class _registrationState extends State<registration> {
  String dropdownValue = '';
  bool x = false;
  bool select(){
    setState(() {
      x = !x;
    });
    return x;
  }






   
  Widget cells(String courseDetails) {
    return Container(
      height: 50,
      child: Align(
          alignment: Alignment.center,
          child: Text(courseDetails, textAlign: TextAlign.center)),
    );
  }

  @override
  Widget build(BuildContext context) {

    




    return DefaultTabController(
      length: 3,
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
            Tab(
              text: 'A',
            ),
          ]),
        ),
        body: TabBarView(
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Select Semester:  '),
                    DropdownButton<String>(
                      menuMaxHeight: 250,
                      value: dropdownValue,
                      // icon: const Icon(Icons.arrow_downward),
                      // iconSize: 24,
                      // elevation: 16,
                      // style: const TextStyle(color: Colors.deepPurple),
                      // underline: Container(
                      //   height: 2,
                      //   color: Colors.deepPurpleAccent,
                      // ),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownValue = newValue!;
                        });
                      },
                      items: <String>[
                        '',
                        'S1',
                        'S2',
                        'S3',
                        'S4',
                        'S5',
                        'S6',
                        'S7',
                        'S8'
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ],
                ),
                Container(
              width: 350,
              child: Table(
                border: TableBorder.all(
                    color: Colors.black,
                    width: 1,
                    borderRadius: const BorderRadius.all(Radius.circular(10))),
                columnWidths: const {
                  0: FixedColumnWidth(80),
                  1: IntrinsicColumnWidth(flex: 2),
                  2: FixedColumnWidth(75),
                  3: FixedColumnWidth(50),
                },
                children: [
                  TableRow(children: [
                    cells('Course Code'),
                    cells('Course Name'),
                    cells('Course Pattern'),
                    cells('Credit')
                  ]),
                  TableRow(
                      decoration: BoxDecoration(color: Colors.green),
                      children: [
                        GestureDetector(
                          child: cells('19CSE301'),
                          onLongPress: () {
                            print('hello');
                          },
                        ),
                        cells('Computer Networking'),
                        cells('core'),
                        cells('4.0')
                      ]),
                  TableRow(
                      decoration: BoxDecoration(color: Colors.grey),
                      children: [
                        cells('19CSE302'),
                        cells('Design and Analysis of Algorithm'),
                        cells('core'),
                        cells('4.0')
                      ]),
                  TableRow(
                      decoration: BoxDecoration(color: Colors.red),
                      children: [
                        cells('19CSE303'),
                        cells('Embeded Systems'),
                        cells('core'),
                        cells('4.0')
                      ])
                ],
              ),
            ),

            course_registration(x,select),

         

              ],
            ),

            Container(child: course_registration(x,select),),
            
            







            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child:
                  DataTable(showCheckboxColumn: true, columns: const <DataColumn>[
                DataColumn(label: Text('Course Code')),
                DataColumn(label: Text('Course Name')),
                DataColumn(label: Text('Course Pattern')),
                DataColumn(label: Text('Credit'))
              ], rows: const <DataRow>[
                DataRow(cells: <DataCell>[
                  DataCell(Text('19301')),
                  DataCell(Text('Computer Networking')),
                  DataCell(Text('core')),
                  DataCell(Text('4.0'))
                ]),
                DataRow(cells: <DataCell>[
                  DataCell(Text('19302')),
                  DataCell(Text('Design and Analysis of Algorithm')),
                  DataCell(Text('core')),
                  DataCell(Text('4.0'))
                ]),
                DataRow(cells: <DataCell>[
                  DataCell(Text('19303')),
                  DataCell(Text('Embeded Systems')),
                  DataCell(Text('core')),
                  DataCell(Text('4.0'))
                ]),
                DataRow(cells: <DataCell>[
                  DataCell(Text('19304')),
                  DataCell(Text('Machine learning')),
                  DataCell(Text('core')),
                  DataCell(Text('4.0'))
                ])
              ]),
            )
          ],
        ),
      ),
    );
  }
}
