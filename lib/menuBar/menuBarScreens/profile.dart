import 'package:dashboard/LogInPage/login_page.dart';
import 'package:flutter/material.dart';

class profile extends StatelessWidget {
  const profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Profile'),
        ),
        body: Column(
          children: [
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(left:50,right: 50),
                  child: const TextField(
                    decoration: InputDecoration(border: OutlineInputBorder()),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left:50,right: 50,top: 30),
                  child: const TextField(
                    decoration: InputDecoration(border: OutlineInputBorder()),
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
