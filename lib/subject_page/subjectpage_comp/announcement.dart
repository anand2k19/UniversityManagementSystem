import "package:flutter/material.dart";
import "package:intl/intl.dart";

import '../../models/note.dart';
import '../subjectpage_screens/subject_page.dart';

class Announcement extends StatefulWidget {
  final Note note;
  final int index;
  final Function removeNote;

  Announcement(this.note, this.index, this.removeNote);

  @override
  State<Announcement> createState() => _AnnouncementState();
}

class _AnnouncementState extends State<Announcement> {
  final _noteController = TextEditingController();
  final FocusNode node = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Card(
          elevation: 8,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 16,
                    ),
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.purple,
                        border: Border.all(width: 2, color: Colors.black),
                        borderRadius: BorderRadius.circular(8)),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                              DateFormat.LLL()
                                  .format(DateTime.now())
                                  .substring(0, 3),
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              )),
                          Text(
                            DateTime.now().day.toString(),
                            style: const TextStyle(color: Colors.white),
                          ),
                          Text(DateFormat.jm().format(DateTime.now()),
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                              ))
                        ]),
                  ),
                ],
              ),
              Flexible(
                child: widget.note.isEdit
                    ? TextField(
                        controller: _noteController,
                        onSubmitted: null,
                        focusNode: node,
                      )
                    : Container(
                        width: 270,
                        margin: const EdgeInsets.symmetric(vertical: 16),
                        child: Text(widget.note.note)),
              ),
            ],
          ),
        ),
        if (SubjectPage.mode)
          Positioned(
            right: 0,
            bottom: 0,
            child: IconButton(
                iconSize: 20,
                alignment: Alignment.bottomRight,
                onPressed: () => setState(() {
                      widget.note.isOpen = !widget.note.isOpen;
                    }),
                icon: const Icon(Icons.arrow_downward)),
          ),
        if (widget.note.isOpen && SubjectPage.mode)
          Positioned(
            bottom: 25,
            right: 15,
            child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 5,
                      spreadRadius: 3,
                      offset: const Offset(-4, -3),
                    ),
                  ],
                ),
                width: 100,
                height: 50,
                child: Column(children: [
                  InkWell(
                    onTap: () => widget.removeNote(widget.index),
                    child: Container(
                        alignment: Alignment.center,
                        width: 100,
                        height: 25,
                        decoration: BoxDecoration(
                            border: BorderDirectional(
                          bottom: BorderSide(
                            width: 2,
                            color: Colors.grey.withOpacity(0.1),
                          ),
                        )),
                        child: const Text("Delete",
                            style: TextStyle(color: Colors.blueGrey))),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                        alignment: Alignment.center,
                        width: 100,
                        height: 25,
                        decoration: BoxDecoration(
                            border: BorderDirectional(
                          bottom: BorderSide(
                            width: 2,
                            color: Colors.grey.withOpacity(0.1),
                          ),
                        )),
                        child: const Text("Edit",
                            style: TextStyle(color: Colors.blueGrey))),
                  ),
                ])),
          )
      ],
    );
  }
}
