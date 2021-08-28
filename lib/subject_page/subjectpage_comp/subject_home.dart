import "package:flutter/material.dart";

class SubjectHome extends StatefulWidget {
  final String code;
  final String name;
  final Function checkMode;
  final bool mode;

  SubjectHome(this.code, this.name,this.mode, this.checkMode);

  @override
  State<SubjectHome> createState() => _SubjectHomeState();
}

class _SubjectHomeState extends State<SubjectHome> {

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(0),
      elevation: 8,
      color: Colors.white,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(
              left: 10,
              right: 20,
            ),
            decoration: const BoxDecoration(
                border: BorderDirectional(
                    bottom: BorderSide(
              width: 1,
              color: Colors.grey,
            ))),
            child: Row(
              children: [
                const Icon(
                  Icons.list,
                  color: Colors.black,
                ),
                const SizedBox(width: 6),
                const Text(
                  "Home",
                  style: TextStyle(color: Colors.black),
                ),
                Switch(
                  value: widget.mode,
                  onChanged: (val) => widget.checkMode(val),
                ),
                widget.mode
                    ? const Text("Teacher mode")
                    : const Text("Student Mode"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 15),
            child: Row(children: [
              Text("Code:${widget.code}",
                  style: const TextStyle(
                    fontSize: 13,
                    color: Colors.blueGrey,
                  )),
              const SizedBox(
                width: 35,
              ),
              const Text("Name:",
                  style: TextStyle(fontSize: 13, color: Colors.blueGrey)),
              Flexible(
                fit: FlexFit.tight,
                child: Container(
                  height: 20,
                  child: FittedBox(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      widget.name,
                      style:
                          const TextStyle(color: Colors.blueGrey, fontSize: 12),
                    ),
                  ),
                ),
              ),
            ]),
          ),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
