import "package:flutter/material.dart";

import "./task_assigned.dart";
import "./task_completed.dart";
import "../../models/test.dart";

class MultiPageNav extends StatefulWidget {
  final List<Test> completedTasks;

  MultiPageNav(this.completedTasks);

  @override
  _MultiPageNavState createState() => _MultiPageNavState();
}

class _MultiPageNavState extends State<MultiPageNav> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: TabBar(
            tabs: [
              Tab(
                text: "Assigned",
              ),
              Tab(text: "Completed")
            ],
            labelColor: Theme.of(context).primaryColor,
          ),
          body: TabBarView(
            children: [
              TaskAssigned(widget.completedTasks),
              TaskCompleted(widget.completedTasks),
            ],
          ),
        ),
      ),
    );
  }
}
