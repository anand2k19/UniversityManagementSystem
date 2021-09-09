
import 'package:flutter/material.dart';

import "./models/note.dart";
import './models/sub.dart';

final List<sub> subjects = <sub>[
  sub(
    subjectCode: '19303',
    subjectName: "Embedded System",
    subjectTeacher: "Ron Jacob Varghese",
    subjectColor: Colors.blueAccent,
  ),
  sub(
    subjectCode: '19302',
    subjectName: "Design and Analysis of Algorithms",
    subjectTeacher: "Ananthakrishnan Rajeev",
    subjectColor: Colors.orangeAccent,
  ),
  sub(
    subjectCode: '19301',
    subjectName: "Machine Learning",
    subjectTeacher: "Ananthanandhanan",
    subjectColor: Colors.greenAccent,
  ),
  sub(
    subjectCode: '19300',
    subjectName: "Computer Networks",
    subjectTeacher: "Karthik Narayanan",
    subjectColor: Colors.purpleAccent,
  ),
  sub(
    subjectCode: '19305',
    subjectName: "Environmental Science",
    subjectTeacher: "Akshay",
    subjectColor: Colors.indigoAccent,
  ),
  sub(
    subjectCode: '19304',
    subjectName: "Cultural Education",
    subjectTeacher: "Mahesh Ranjith",
    subjectColor: Colors.cyanAccent,
  ),
];

final List<Note> dummyData = [
  Note(
      subjectCode: '19300',
      note: "This is an announcement brought to you by crashfm",
      date: DateTime.now()),
  Note(
    subjectCode: '19300',
    note: "No more announcement todya folks",
    date: DateTime.now(),
  ),
  Note(
    subjectCode: '19301',
    note:
        "akdfhakdjfhafhawklfhkwefasdknvjsdahfkjasflasflasjfuyhjgjkhgkjgjhgkjhgjhgkjhgkjgkjgkgjgkghjkgkjg",
    date: DateTime.now(),
  ),
  Note(
    subjectCode: '19301',
    note: "adhsfakdjhfklasdhflaksdhflakhsdflkjahsdf",
    date: DateTime.now(),
  ),
  Note(
    subjectCode: '19302',
    note: "aldfhaklsdfhlkjdhsflksdhflkjdhsf",
    date: DateTime.now(),
  ),
  Note(
    subjectCode: '19302',
    note: "aldfhlkajdhsfkjadhsfkdsjhfdskhfladksf",
    date: DateTime.now(),
  ),
  Note(
      subjectCode: '19303',
      note: "This is an announcement brought to you by crashfm",
      date: DateTime.now()),
  Note(
    subjectCode: '19303',
    note: "No more announcement todya folks",
    date: DateTime.now(),
  ),
  Note(
    subjectCode: '19305',
    note:
        "akdfhakdjfhafhawklfhkwefasdknvjsdahfkjasflasflasjfuyhjgjkhgkjgjhgkjhgjhgkjhgkjgkjgkgjgkghjkgkjg",
    date: DateTime.now(),
  ),
  Note(
    subjectCode: '19305',
    note: "adhsfakdjhfklasdhflaksdhflakhsdflkjahsdf",
    date: DateTime.now(),
  ),
  Note(
    subjectCode: '19304',
    note: "aldfhaklsdfhlkjdhsflksdhflkjdhsf",
    date: DateTime.now(),
  ),
  Note(
    subjectCode: '19304',
    note: "aldfhlkajdhsfkjadhsfkdsjhfdskhfladksf",
    date: DateTime.now(),
  ),
];

