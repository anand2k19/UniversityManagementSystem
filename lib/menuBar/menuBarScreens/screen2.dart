import 'package:flutter/material.dart';

class screen2 extends StatelessWidget {
  const screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen two'),
      ),
      body: Text('This is body of screen2'),
    );
  }
}
