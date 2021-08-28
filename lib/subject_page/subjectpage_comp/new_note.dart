import "package:flutter/material.dart";

class NewNote extends StatefulWidget {
  final List<String> dummyData;

  NewNote(this.dummyData);

  @override
  _NewNoteState createState() => _NewNoteState();
}

class _NewNoteState extends State<NewNote> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: const [
            TextField(
              decoration: InputDecoration(
                labelText: "Annoucement",
                labelStyle: TextStyle(fontSize: 12),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: "",
                labelStyle: TextStyle(fontSize: 12),
              ),
            ),
          ],
        ));
  }
}
