import 'package:flutter/material.dart';

import '../../providers/note.dart';

class EditAnnouncement extends StatefulWidget {
  Note note;
  final int index;
  final Function removeNote;
  EditAnnouncement(this.note, this.index, this.removeNote);

  @override
  _EditAnnouncementState createState() => _EditAnnouncementState();
}

class _EditAnnouncementState extends State<EditAnnouncement> {
  final _noteController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _noteController.text = widget.note.note;
  }

  @override
  Widget build(BuildContext context) {
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
                        onPressed: () =>
                            Navigator.of(context).pop(widget.note.note),
                      ),
                    ),
                    RaisedButton(
                      child: Text('Done'),
                      onPressed: () {
                        Navigator.of(context).pop(_noteController.text);
                      },
                    ),
                  ],
                )
              ],
            )));
  }
}
