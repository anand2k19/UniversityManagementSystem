import "package:flutter/material.dart";

class Test {
  final String testId;
  final String testName;
  final String subjectCode;
  final DateTime date;
  final String gate;
  final String duration;
  final String testTeacher;
  final String testIntro;
  final String testScore;

  Test({
    required this.testId,
    required this.testName,
    required this.subjectCode,
    required this.date,
    required this.gate,
    required this.duration,
    this.testTeacher = "None",
    this.testIntro = "None",
    this.testScore = "nil",
  });
}
