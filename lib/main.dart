import 'package:flutter/material.dart';
import 'LogInPage/login_page.dart';
import './subject_page/subject_page.dart';
import './menuBar/menuBarScreens/fees.dart';
import './menuBar/menuBarScreens/profile.dart';
import './menuBar/menuBarScreens/registration/registration.dart';
import './menuBar/menuBarScreens/settings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  //ron is an idiot
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme:  ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: LogInPage(),

      routes:{'profilePage':(context) => const profile(),
              'registrationPage':(context) => const registration(),
              'feesPage':(context) => const fees(),
              'settingsPage':(context) => const settings(),
      },
    );
  }
}
