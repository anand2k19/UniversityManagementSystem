import 'package:flutter/material.dart';
import 'package:dashboard/SettingsPage.dart';
import 'package:dashboard/LogInPage.dart';
import 'package:dashboard/HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: LogInPage(),
    );
  }
}



