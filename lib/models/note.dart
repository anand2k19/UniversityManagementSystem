import "package:flutter/material.dart";

class Note {
  final String note;
  final DateTime date;
  bool isOpen;
  bool isEdit;

  Note({required this.note, required this.date, this.isOpen = false,this.isEdit = false});
}
