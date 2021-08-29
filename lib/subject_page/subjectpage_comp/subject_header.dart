import "package:flutter/material.dart";

class SubjectHeader extends StatelessWidget {
  final String header;
  final Color subjectColor;
  SubjectHeader(this.header, this.subjectColor);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Column(children: [
        Container(
          color: Colors.grey,
          height: 100,
        ),
        Card(
          color: Colors.white,
          elevation: 10,
          margin: const EdgeInsets.all(0),
          child: Container(
            width: double.infinity,
            height: 60,
            padding: const EdgeInsets.only(top: 20, left: 10),
            child: Text(
              header,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ]),
      Positioned(
        top: 60,
        right: 25,
        child: Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
            color: Colors.pink[100],
            border: Border.all(
              width: 5,
              color: Colors.pink.shade400,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      )
    ]);
  }
}
