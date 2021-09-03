import "package:flutter/material.dart";

import "../../dummy_data.dart";
import "./announcement.dart";
import '../subjectpage_screens/subject_page.dart';

class Announcements extends StatefulWidget {
  final double listHeight;

  Announcements(this.listHeight);

  @override
  State<Announcements> createState() => _AnnouncementsState();
}

class _AnnouncementsState extends State<Announcements> {
  void _removeNote(index) {
    setState(() {
      dummyData.removeAt(index);
      dummyData[index].isOpen = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
                    ),
                  ),
                ),
                child: Row(
                  children: [
                    const Icon(Icons.announcement_outlined),
                    const SizedBox(width: 5),
                    const Text("Announcements"),
                    const SizedBox(
                      width: 140,
                    ),
                    if (SubjectPage.mode)
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
              Container(
                color: Colors.grey.shade100,
                height: widget.listHeight * 0.9,
                child: ListView.builder(
                  itemBuilder: (ctx, index) {
                    return Announcement(dummyData[index], index, _removeNote);
                  },
                  itemCount: dummyData.length,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
