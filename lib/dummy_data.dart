import 'package:flutter/material.dart';

import 'providers/note.dart';
import './models/sub.dart';

final List<sub> subjects = <sub>[
  sub(
    subjectCode: '19303',
    subjectName: "Embedded System",
    subjectTeacher: "Ron Jacob Varghese",
    subjectColor: const Color(0xFFef476f),
  ),
  sub(
    subjectCode: '19302',
    subjectName: "Design and Analysis of Algorithms",
    subjectTeacher: "Ananthakrishnan Rajeev",
    subjectColor: const Color(0xFFffd166),
  ),
  sub(
    subjectCode: '19301',
    subjectName: "Machine Learning",
    subjectTeacher: "Ananthanandhanan",
    subjectColor: const Color(0xFF06d6a0),
  ),
  sub(
    subjectCode: '19300',
    subjectName: "Computer Networks",
    subjectTeacher: "Karthik Narayanan",
    subjectColor: const Color(0xFF3a86ff),
  ),
  sub(
    subjectCode: '19305',
    subjectName: "Environmental Science",
    subjectTeacher: "Akshay",
    subjectColor: const Color(0xFF757bc8),
  ),
  sub(
    subjectCode: '19304',
    subjectName: "Cultural Education",
    subjectTeacher: "Mahesh Ranjith",
    subjectColor: const Color(0xFFee6c4d),
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
