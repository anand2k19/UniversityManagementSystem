import "package:flutter/material.dart";
import './subject_page.dart';
import './subject_files.dart';
import './subject_assign.dart';
import './subject_tests.dart';

class SubjectTabsScreen extends StatefulWidget {
  final String subjectName;
  final String subjectCode;
  final String subjectTeacher;
  final Color subjectColor;

  SubjectTabsScreen({
    required this.subjectName,
    required this.subjectCode,
    required this.subjectTeacher,
    required this.subjectColor,
  });

  @override
  State<SubjectTabsScreen> createState() => _SubjectTabsScreenState();
}

class _SubjectTabsScreenState extends State<SubjectTabsScreen> {
  int _navIndex = 0;

  void _selectPage(index) {
    setState(() {
      _navIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
        title: Text(
      widget.subjectName,
      style: Theme.of(context).textTheme.headline4,
    ));
    List<Widget> tabs = [
      SubjectPage(
        subjectCode: widget.subjectCode,
        subjectName: widget.subjectName,
        subjectTeacher: widget.subjectTeacher,
        subjectColor: widget.subjectColor,
      ),
      SubjectFiles(),
      SubjectAssign(),
      SubjectTests(),
    ];
    return Scaffold(
      appBar: appBar,
      body: Container(
        height: MediaQuery.of(context).size.height -
            appBar.preferredSize.height -
            MediaQuery.of(context).padding.top,
        child: tabs[_navIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.blueGrey,
          selectedItemColor: Theme.of(context).accentColor,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          elevation: 8,
          currentIndex: _navIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.file_copy_outlined),
              label: "Files",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.pending_actions_outlined),
              label: "Assignments",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.book_outlined),
              label: "Tests",
            )
          ],
          onTap: (index) => _selectPage(index)),
    );
  }
}
