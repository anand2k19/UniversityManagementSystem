import "package:flutter/material.dart";
import "package:intl/intl.dart";

import "../../models/test.dart";

class TaskAssigned extends StatelessWidget {
  final List<Test> completedTasks;

  TaskAssigned(this.completedTasks);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: 700,
        width: 10,
        child: ListView.builder(
          itemBuilder: (ctx, index) {
            return Stack(children: [
              Container(
                height: 85,
                alignment: Alignment.centerLeft,
                width: 400,
                margin:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    border: Border.all(color: Colors.grey.shade400, width: 2),
                    borderRadius: BorderRadius.circular(15)),
                child: Container(
                  margin: const EdgeInsets.only(
                    left: 20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(completedTasks[index].testName,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16)),
                      SizedBox(
                        height: 5,
                      ),
                      Text(DateFormat.yMMMMd()
                          .format(completedTasks[index].date)),
                    ],
                  ),
                ),
              ),
              Positioned(
                right: 25,
                bottom: 35,
                child: Container(
                    width: 100,
                    margin: const EdgeInsets.only(left: 30),
                    padding: const EdgeInsets.only(bottom: 10, top: 15),
                    alignment: Alignment.center,
                    height: 50,
                    decoration: BoxDecoration(
                        border: Border(
                            left: BorderSide(
                                width: 3, color: Colors.grey.shade400))),
                    child: Text(
                      completedTasks[index].gate,
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.red,
                          fontWeight: FontWeight.bold),
                    )),
              ),
            ]);
          },
          itemCount: completedTasks.length,
        ),
      ),
    );
  }
}
