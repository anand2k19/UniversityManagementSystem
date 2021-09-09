import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';

class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  _profileState createState() => _profileState();
}

class _profileState extends State<profile> {
  TextEditingController dateinput = TextEditingController();

  @override
  void initState() {
    dateinput.text = "";
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Card(
                child: Container(
                  height: 250,
                  width: 350,
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      SizedBox(height: 10),
                      Center(
                        child: Text(
                          'Student Details',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(height: 30),
                      Text('Name   Akshay Babu K'),
                      SizedBox(height: 30),
                      Text('Branch  CSE D'),
                      SizedBox(height: 30),
                      Text('Semester  S5'),
                      SizedBox(height: 30),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: 110,
              child: TextField(
                decoration: const InputDecoration(label: Text('Date of Birth')),
                controller: dateinput,
                onTap: () async {
                  DateTime pickedDate = DateTime(2);
                  showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2100));
                  if (pickedDate != null) {
                    print(pickedDate);
                    String formattedDate =
                        DateFormat('dd-MM-yyyy').format(pickedDate);
                    print(formattedDate);
                    setState(
                      () {
                        dateinput.text = formattedDate;
                      },
                    );
                  } else {
                    print("Date not selected");
                  }
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
