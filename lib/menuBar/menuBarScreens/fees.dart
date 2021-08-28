import 'package:flutter/material.dart';

class fees extends StatelessWidget {
  const fees({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fees'),
      ),
      body: Center(child: Text('This is body of Fees')),
    );
  }
}