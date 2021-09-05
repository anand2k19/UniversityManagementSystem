import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import '../LogInPage/login_page.dart';

class menuBar extends StatelessWidget {
  const menuBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget menuBarItems(String title, IconData iconName, String menuPage) {
    return Column(
      children: [
        ListTile(
          title: Text(title),
          leading: Icon(iconName),
          onTap: () {
            Navigator.pushNamed(context, menuPage);
          },
        ),
        // const Divider(),
      ],
    );
  }

    return Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
                accountName: Text('Tommy Sins'),
                accountEmail: Text('Tommy69@femail.com'),
                decoration: BoxDecoration(color: Colors.pink),
                currentAccountPicture: CircleAvatar(backgroundColor: Colors.grey,) ,
                ),
            menuBarItems('Profile', Icons.account_circle, 'profilePage'),
            menuBarItems('Registration', Icons.app_registration, 'registrationPage'),
            menuBarItems('Fees', Icons.money, 'feesPage'),
            menuBarItems('Settings', Icons.settings, 'settingsPage'),
            ListTile(
            title: const Text(
              "Log Out",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            leading: Icon(Icons.logout),
            onTap: () {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => LogInPage()),
                  (route) => false);
            },
          ),
          // const Divider(),
          ],
        ),
    );
  }
}