import "package:flutter/material.dart";
import "package:intl/intl.dart";

import "../../models/note.dart";

class NoteList extends StatefulWidget {
  List<Note> dummyData;
  final bool mode;

  NoteList(this.dummyData, this.mode);

  @override
  State<NoteList> createState() => _NoteListState();
}

class _NoteListState extends State<NoteList> {
  final _noteController = TextEditingController();

  void removeNote(index) {
    setState(() {
      widget.dummyData.removeAt(index);
      widget.dummyData[index].isOpen = false;
    });
  }

  void toEditNote(index) {
    setState(() {
      _noteController.text = widget.dummyData[index].note;
      widget.dummyData[index].isEdit = true;
      widget.dummyData[index].isOpen = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade100,
      height: 350,
      child: ListView.builder(
        itemBuilder: (ctx, index) {
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
                      child: widget.dummyData[index].isEdit
                          ? TextField(
                              controller: _noteController,
                              onSubmitted: null,
                              
                            )
                          : Container(
                              width: 270,
                              margin: const EdgeInsets.symmetric(vertical: 16),
                              child: Text(widget.dummyData[index].note)),
                    ),
                  ],
                ),
              ),
              if (widget.mode)
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: IconButton(
                      iconSize: 20,
                      alignment: Alignment.bottomRight,
                      onPressed: () => setState(() {
                            widget.dummyData[index].isOpen =
                                !widget.dummyData[index].isOpen;
                          }),
                      icon: const Icon(Icons.arrow_downward)),
                ),
              if (widget.dummyData[index].isOpen && widget.mode)
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
                          onTap: () => removeNote(index),
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
                          onTap: () => toEditNote(index),
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
        },
        itemCount: widget.dummyData.length,
      ),
    );
  }
}
