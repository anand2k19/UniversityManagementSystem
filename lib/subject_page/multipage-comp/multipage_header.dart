import "package:flutter/material.dart";

class MultiPageHeader extends StatelessWidget {
  final String title;
  final IconData titleIcon;
  final double titleHeight;

  MultiPageHeader(this.title, this.titleIcon, this.titleHeight);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: titleHeight,
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(
          width: 2,
          color: Colors.grey.shade300,
        ))),
        margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
        width: double.infinity,
        child: Row(
          children: [
            Icon(titleIcon, color: Colors.blueGrey),
            SizedBox(width: 15),
            Text(title,
                style: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 18,
                ))
          ],
        ));
  }
}
