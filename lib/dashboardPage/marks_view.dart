import 'package:dashboard/dummy_data.dart';
import 'package:flutter/material.dart';


class MarksPage extends StatefulWidget {
  const MarksPage({Key? key}) : super(key: key);

  @override
  _MarksPageState createState() => _MarksPageState();
}

class _MarksPageState extends State<MarksPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      padding: const EdgeInsets.fromLTRB(0,20,0,0),
      child: FittedBox(
        fit: BoxFit.fill,
        child: DataTable
          (  columns:List.generate(columnNames.length, (index) =>
                            DataColumn(label: Text(columnNames[index]))),

              columnSpacing: 10,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.pinkAccent,width: 5),
                borderRadius:BorderRadius.circular(15),
              ),


              rows:List.generate(rowNames.length, (index) =>
                    rowNames[index],


    ),
    ),
      ),

    );
  }
}
