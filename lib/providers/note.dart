import "package:flutter/material.dart";

class Note with ChangeNotifier{
  final String subjectCode;
  String note;
  final DateTime date;
  bool isOpen;
  bool isEdit;

  Note(
      {required this.subjectCode,
      required this.note,
      required this.date,
      this.isOpen = false,
      this.isEdit = false});
  
  
}
