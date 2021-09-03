import "package:flutter/material.dart";
import 'package:flutter/rendering.dart';

import '../subjectpage_comp/announcements.dart';
import './subject_profile.dart';

class SubjectPage extends StatefulWidget {
  static bool mode = false;
  final String subjectName;
  final String subjectCode;
  final String subjectTeacher;
  final Color subjectColor;

  SubjectPage({
    required this.subjectName,
    required this.subjectCode,
    required this.subjectTeacher,
    required this.subjectColor,
  });

  @override
  _SubjectPageState createState() => _SubjectPageState();
}

class _SubjectPageState extends State<SubjectPage> {
  int _navIndex = 0;
  // Widget _createNewNote(BuildContext ctx){
  //   return showModalBottomSheet(context: ctx, builder: (bCtx){
  //     return NewNote(_dummyData);
  //   })
  // }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        color: Colors.grey[250],
        child: Column(
          children: [
            Card(
              margin: const EdgeInsets.all(0),
              elevation: 8,
              color: Colors.white,
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(
                      left: 15,
                      right: 20,
                      bottom: 5,
                      top: 5,
                    ),
                    decoration: const BoxDecoration(
                        border: BorderDirectional(
                            bottom: BorderSide(
                      width: 1,
                      color: Colors.grey,
                    ))),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.list,
                          color: Colors.blueGrey,
                          size: 24,
                        ),
                        const SizedBox(
                          width: 3,
                        ),
                        const Text(
                          "Home",
                          style: TextStyle(
                            color: Colors.blueGrey,
                            fontSize: 17,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Switch(
                          value: SubjectPage.mode,
                          onChanged: (val) => setState(() {
                            SubjectPage.mode = val;
                          }),
                        ),
                        SubjectPage.mode
                            ? const Text("Teacher mode")
                            : const Text("Student Mode"),
                      ],
                    ),
                  ),
                  SubjectProfile(widget.subjectCode, widget.subjectTeacher,
                      MediaQuery.of(context).size.height * 0.21),
                  Announcements(MediaQuery.of(context).size.height * 0.4751),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
