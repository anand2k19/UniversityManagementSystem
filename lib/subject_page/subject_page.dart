import "package:flutter/material.dart";
import 'package:flutter/rendering.dart';

import "./subjectpage_comp/subject_header.dart";
import "./subjectpage_comp/subject_home.dart";
import "./subjectpage_comp/note_list.dart";
import "../models/note.dart";
import "../dummy_data.dart";

class SubjectPage extends StatefulWidget {
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
  bool _mode = false;

  void _changeMode(val) {
    setState(() {
      _mode = val;
    });
  }
  // Widget _createNewNote(BuildContext ctx){
  //   return showModalBottomSheet(context: ctx, builder: (bCtx){
  //     return NewNote(_dummyData);
  //   })
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.subjectName),
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          color: Colors.grey[250],
          child: Column(
            children: [
              SubjectHeader(widget.subjectName, widget.subjectColor),
              SubjectHome(widget.subjectCode, widget.subjectTeacher, _mode,
                  _changeMode),
              const SizedBox(
                height: 20,
              ),
              Card(
                  color: Colors.white,
                  elevation: 10,
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(
                          top: 15,
                          left: 10,
                          bottom: 15,
                        ),
                        decoration: const BoxDecoration(
                            border: BorderDirectional(
                                bottom: BorderSide(
                          width: 1,
                          color: Colors.grey,
                        ))),
                        child: Row(
                          children: [
                            const Icon(Icons.announcement_outlined),
                            const SizedBox(width: 5),
                            const Text("Announcements"),
                            const SizedBox(
                              width: 140,
                            ),
                            if (_mode)
                              const IconButton(
                                icon: Icon(Icons.add),
                                onPressed: null,
                                padding: EdgeInsets.all(0),
                                iconSize: 20,
                                constraints: BoxConstraints(
                                  maxWidth: 30,
                                  maxHeight: 30,
                                ),
                              )
                          ],
                        ),
                      ),
                      NoteList(dummyData, _mode),
                    ],
                  ))
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.blueGrey,
        selectedItemColor: Colors.blue,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        elevation: 8,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.file_copy_outlined),
            label: "Files",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pending_actions_outlined),
            label: "Assignments",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book_outlined),
            label: "Tests",
          )
        ],
      ),
    );
  }
}
