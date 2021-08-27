import 'package:dashboard/HomePage.dart';
import 'package:dashboard/sub.dart';
import 'package:flutter/material.dart';


class AddSubject extends StatefulWidget {
  const AddSubject({Key? key}) : super(key: key);

  @override
  _AddSubjectState createState() => _AddSubjectState();
}

class _AddSubjectState extends State<AddSubject> {

  TextEditingController nameController = TextEditingController();
  TextEditingController nameController1 = TextEditingController();
  String SCode ='';
  String SName = '';



  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Add Subject'),
            leading: BackButton(
              onPressed: () => Navigator.pop(context, false),
            ),

          ),
          body: Center(child: Column(children: <Widget>[
            Container(
                margin: EdgeInsets.all(20),
                child: TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Subject Code',
                  ),
                  onChanged: (text) {
                    setState(() {
                      SCode = text;
                      //you can access nameController in its scope to get
                      // the value of text entered as shown below
                      //fullName = nameController.text;
                    });
                  },
                )
            ),
            Container(

                margin: EdgeInsets.all(20),
                child: TextField(
                  controller: nameController1,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Subject Name',
                  ),
                  onChanged: (text) {
                    setState(() {
                      SName = text;
                      //you can access nameController in its scope to get
                      // the value of text entered as shown below
                      //fullName = nameController.text;
                    });
                  },
                ),
            ),
            ElevatedButton(
                onPressed: () {
                 HomePage.subjects.add(new sub(sc:SCode, sname: SName));
                 Navigator.push(
                   context,
                   MaterialPageRoute(builder: (context) => HomePage()),
                 );

                },
              child: Text('Submit'),
            ),
          ]
          )
          )
      ),
    );





  }
}

