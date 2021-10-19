import "package:flutter/material.dart";
import "package:intl/intl.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";

import '../../providers/note.dart';
import '../subjectpage_screens/subject_page.dart';

class Announcement extends StatefulWidget {
  final Note note;
  final int index;
  final Function removeNote;
  final Function editNote;

  Announcement(this.note, this.index, this.removeNote, this.editNote);

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
                    padding: const EdgeInsets.symmetric(vertical: 3),
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        border: Border.all(width: 2, color: Colors.black),
                        borderRadius: BorderRadius.circular(8)),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                              DateFormat.LLL()
                                  .format(DateTime.now())
                                  .substring(0, 3),
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontFamily: 'FiraSans')),
                          Text(
                            DateTime.now().day.toString(),
                            style: const TextStyle(
                                color: Colors.white,
                                fontFamily: 'FiraSans',
                                fontSize: 11),
                          ),
                          Text(DateFormat.jm().format(DateTime.now()),
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontFamily: 'FiraSans',
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
            right: 3,
            bottom: 0,
            child: IconButton(
                iconSize: 20,
                alignment: Alignment.bottomRight,
                onPressed: () => setState(() {
                      widget.note.isOpen = !widget.note.isOpen;
                    }),
                icon: Icon(
                  FontAwesomeIcons.angleDown,
                  color: Colors.grey.shade400,
                  size: 23,
                )),
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
              child: Column(
                children: [
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
                      child: const Text(
                        "Delete",
                        style: TextStyle(color: Colors.blueGrey),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () => widget.editNote(context, widget.index),
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
                        ),
                      ),
                      child: const Text(
                        "Edit",
                        style: TextStyle(color: Colors.blueGrey),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
      ],
    );
  }
}
