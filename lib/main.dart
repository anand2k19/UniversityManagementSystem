import 'package:flutter/material.dart';
import 'LogInPage/login_page.dart';
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
      theme: ThemeData(
          primarySwatch: Colors.brown,
          accentColor: Color(0xFFB79492),
          appBarTheme: AppBarTheme(color: Color(0xFF774936)),
          buttonTheme: ButtonThemeData(
            buttonColor: Color(0xFFB79492),
          ),
          fontFamily: 'Lora',
          textTheme: TextTheme(
            headline1: TextStyle(fontSize: 13, fontWeight: FontWeight.normal),
            headline2: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 15,
            ),
            headline3: TextStyle(
              fontFamily: 'Barlow_Condensed',
              fontSize: 20,
            ),
            headline4: TextStyle(
                fontFamily: 'Lato', fontSize: 21, color: Colors.white),
          )
          ),
      home: LogInPage(),
      routes: {
        'profilePage': (context) => const profile(),
        'registrationPage': (context) => const registration(),
        'feesPage': (context) => const fees(),
        'settingsPage': (context) => const settings(),
      },
    );
  }
}
