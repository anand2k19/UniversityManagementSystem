import 'package:flutter/material.dart';

import "../../models/note.dart";

class EditAnnouncement extends StatefulWidget {
  Note note;
  final int index;
  final Function removeNote;

  EditAnnouncement(this.note, this.index, this.removeNote);

  @override
  _EditAnnouncementState createState() => _EditAnnouncementState();
}

class _EditAnnouncementState extends State<EditAnnouncement> {
  @override
  Widget build(BuildContext context) {
    final _noteController = TextEditingController(text: widget.note.note);

    void _submitData() {
      if (_noteController.text == widget.note.note) {
        Navigator.of(context).pop();
      } else if (_noteController.text == "") {
        widget.removeNote(widget.index);
      } else {}
    }

    return Card(
        elevation: 5,
        child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(labelText: 'Edit Announcement'),
                  maxLines: 8,
                  maxLengthEnforced: true,
                  controller: _noteController,
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 30,
                      ),
                      child: RaisedButton(
                        child: Text('Cancel'),
                        onPressed: () => Navigator.of(context).pop(),
                      ),
                    ),
                    RaisedButton(
                      child: Text('Done'),
                      onPressed: _submitData,
                    ),
                  ],
                )
              ],
            )));
  }
}
