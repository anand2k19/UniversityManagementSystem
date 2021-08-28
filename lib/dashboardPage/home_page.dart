import './add_subject.dart';
import '../LogInPage/login_page.dart';
import '../models/sub.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class HomePage extends StatefulWidget {
  static List<sub> subjects = <sub>[];

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  bool isSwitched = false;
  bool isButtonDisabled = true;
  var textValue = 'Switch is OFF';

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
      drawer: Drawer(
          child: ListView(
        children: [
          new UserAccountsDrawerHeader(
            accountName: new Text("Ram V"),
            accountEmail: new Text("ram@gmail.com"),
            currentAccountPicture: new CircleAvatar(
              backgroundColor: Colors.white,
              child: new Text("P"),
            ),
          ),
          new ListTile(
            title: new Text("I1"),
            trailing: new Icon(Icons.arrow_upward),
          ),
          new Divider(),
          new ListTile(
            title: new Text("I2"),
            trailing: new Icon(Icons.arrow_upward),
          ),
          new Divider(),
          new ListTile(
            title: new Text("I3"),
            trailing: new Icon(Icons.arrow_upward),
          ),
          new Divider(),
          new ListTile(
            title: new Text("Settings"),
            trailing: new Icon(Icons.arrow_upward),
          ),
          new Divider(),
          new ListTile(
            title: new Text(
              "Log Out",
              style: TextStyle(color: Colors.red),
            ),
            trailing: new Icon(Icons.arrow_upward),
            onTap: () {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => LogInPage()),
                  (route) => false);
            },
          ),
          new Divider(),
        ],
      )),
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(4),
            margin: EdgeInsets.all(0),
            height: 50.0,
            width: 400.0,
            color: Colors.brown,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text(
                  'Admin',
                  style: TextStyle(
                    color: Colors.lime,
                  ),
                ),
                Switch(
                  onChanged: toggleSwitch,
                  value: isSwitched,
                  activeColor: Colors.green,
                  activeTrackColor: Colors.white,
                  inactiveThumbColor: Colors.red,
                  inactiveTrackColor: Colors.white,
                ),
                const SizedBox(
                  width: 20,
                  height: 20,
                ),
                ElevatedButton.icon(
                  onPressed: isButtonDisabled
                      ? null
                      : () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AddSubject()),
                          );
                        },
                  icon: Icon(Icons.add),
                  label: Text('Add'),
                ),
              ],
            ),
          ),
          new Expanded(
            child: GridView.count(
              padding: EdgeInsets.all(10),
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 20,
              children: List.generate(HomePage.subjects.length, (index) {
                return Container(
                  height: 100,
                  width: 50,
                  alignment: Alignment.bottomRight,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.bottomRight,
                          end: Alignment.topRight,
                          colors: [Colors.lightBlueAccent, Colors.orange]),
                      color: Colors.yellow[100],
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      border: Border.all(
                        color: Colors.red,
                        width: 5,
                      )),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(
                        width: 20,
                        height: 20,
                      ),
                      const SizedBox(
                        width: 20,
                        height: 20,
                      ),
                      const SizedBox(
                        width: 20,
                        height: 20,
                      ),
                      Text(
                        HomePage.subjects[index].sc,
                      ),
                      Text(HomePage.subjects[index].sname),
                    ],
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }

  void toggleSwitch(bool value) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
        isButtonDisabled = false;
        textValue = 'Switch Button is ON';
      });
      print('Switch Button is ON');
    } else {
      setState(() {
        isSwitched = false;
        isButtonDisabled = true;
        textValue = 'Switch Button is OFF';
      });
      print('Switch Button is OFF');
    }
  }
}
