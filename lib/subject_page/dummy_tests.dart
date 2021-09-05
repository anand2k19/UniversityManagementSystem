import "package:flutter/material.dart";

import '../models/test.dart';

final List<Test> dummyTest = [
  Test(
      testId: "a1",
      subjectCode: "19CSE302",
      testName: "Cloud Computing test-01",
      date: DateTime.now(),
      gate: "2:00-3:30pm",
      duration: "10min",
      testScore: "50"),
  Test(
      testId: "a4",
      subjectCode: "19CSE302",
      testName: "No Mansland test-99",
      date: DateTime.now(),
      gate: "12:00-1:30pm",
      duration: "1.5 hrs",
      testScore: "76.4"),
  Test(
      testId: "a3",
      subjectCode: "19CSE302",
      testName: "Impossible test part 1",
      date: DateTime.now(),
      gate: "11:00-12:30pm",
      duration: "1 hr",
      testScore: "90"),
  Test(
      testId: "a2",
      subjectCode: "19CSE302",
      testName: "Impossible 2.0",
      date: DateTime.now(),
      gate: "5:00-6:30pm",
      duration: "20 min"),
];
