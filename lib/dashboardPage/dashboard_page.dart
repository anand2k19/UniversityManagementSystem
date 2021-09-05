import '../menuBar/menu_bar.dart';

import '../LogInPage/login_page.dart';
import 'package:flutter/material.dart';
import 'calender_view.dart';
import 'home_page.dart';
import 'marks_view.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<DashboardPage> {
  int _currentIndex = 0;



   final List <Widget> _widgetOptions = <Widget> [
     const HomePage(),
     const MarksPage(),
     const CalenderPage(),
   ];


  Widget buildListTile(String title, BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: () {},
          title: Text(title),
          trailing: const Icon(Icons.arrow_upward),
        ),
        const Divider(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('AUMS'),
        //actions: [
        //     ToggleButtons(
        //        children: [

        //       ],
        //       isSelected: _selections)
        //   ],
      ),
      drawer: menuBar(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.announcement),
            label: 'Marks',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Calender',
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      body: _widgetOptions.elementAt(_currentIndex),
    );
  }


}
