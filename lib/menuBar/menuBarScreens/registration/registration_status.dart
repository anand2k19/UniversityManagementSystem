import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

// Widget cells(String courseDetails,{FontWeight fontWeight=FontWeight.normal}) {
//     return Container(
//       height: 50,
//       child: Align(
//           alignment: Alignment.center,
//           child: Text(courseDetails,style: TextStyle(fontWeight: fontWeight) ,textAlign: TextAlign.center),),
//     );
//   }
class registration_status2 extends StatelessWidget {
  const registration_status2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DataTable(columns: const <DataColumn>[
        DataColumn(label: Text('Course Name')),
        DataColumn(label: Text('Student\nEndorsement')),
        DataColumn(label: Text('Department\nEndorsement')),
        DataColumn(label: Text('Financial\nEndorsement')),
        DataColumn(label: Text('Registrar\nEndorsement')),
      ], rows: const <DataRow>[
        DataRow(cells: <DataCell>[
          DataCell(Text('19CSE102:Computer Programming')),
          DataCell(Text('Y')),
          DataCell(Text('Y')),
          DataCell(Text('Y')),
          DataCell(Text('Y')),
        ]),
        DataRow(cells: <DataCell>[
          DataCell(Text('19CSE103:User Interface Design')),
          DataCell(Text('Y')),
          DataCell(Text('Y')),
          DataCell(Text('Y')),
          DataCell(Text('Y')),
        ]),
        DataRow(cells: <DataCell>[
          DataCell(Text('19CSE111:Fundamentals of Data Structures')),
          DataCell(Text('Y')),
          DataCell(Text('Y')),
          DataCell(Text('Y')),
          DataCell(Text('Y')),
        ]),
        DataRow(cells: <DataCell>[
          DataCell(Text('19CUL111:Cultural Education - II')),
          DataCell(Text('Y')),
          DataCell(Text('Y')),
          DataCell(Text('Y')),
          DataCell(Text('Y')),
        ]),
        DataRow(cells: <DataCell>[
          DataCell(Text('19EEE111:Electrical and Electronics Engineering')),
          DataCell(Text('Y')),
          DataCell(Text('Y')),
          DataCell(Text('Y')),
          DataCell(Text('Y')),
        ]),
        DataRow(cells: <DataCell>[
          DataCell(Text('19EEE182:Elelctrical and Elelctronics Engg Practice')),
          DataCell(Text('Y')),
          DataCell(Text('Y')),
          DataCell(Text('Y')),
          DataCell(Text('Y')),
        ]),
        DataRow(cells: <DataCell>[
          DataCell(Text('19MAT112:Linear Algebra')),
          DataCell(Text('Y')),
          DataCell(Text('Y')),
          DataCell(Text('Y')),
          DataCell(Text('Y')),
        ]),
        DataRow(cells: <DataCell>[
          DataCell(Text('19MAT115:Discrete Mathematics')),
          DataCell(Text('Y')),
          DataCell(Text('Y')),
          DataCell(Text('Y')),
          DataCell(Text('Y')),
        ]),
        DataRow(cells: <DataCell>[
          DataCell(Text('19MEE181:Manufacturing Practice')),
          DataCell(Text('Y')),
          DataCell(Text('Y')),
          DataCell(Text('Y')),
          DataCell(Text('Y')),
        ]),
        DataRow(cells: <DataCell>[
          DataCell(Text('19PHY101:Engineering Physics - A')),
          DataCell(Text('Y')),
          DataCell(Text('Y')),
          DataCell(Text('Y')),
          DataCell(Text('Y')),
        ]),
      ]),
    );
  }
}

class registration_status5 extends StatelessWidget {
  const registration_status5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DataTable(columns: const <DataColumn>[
        DataColumn(label: Text('Course Name')),
        DataColumn(label: Text('Student\nEndorsement')),
        DataColumn(label: Text('Department\nEndorsement')),
        DataColumn(label: Text('Financial\nEndorsement')),
        DataColumn(label: Text('Registrar\nEndorsement')),
      ], rows: const <DataRow>[
        DataRow(cells: <DataCell>[
          DataCell(Text('19CSE301:Computer Networking')),
          DataCell(Text('Y')),
          DataCell(Text('Y')),
          DataCell(Text('Y')),
          DataCell(Text('Y')),
        ]),
        DataRow(cells: <DataCell>[
          DataCell(Text('19CSE302:Design and Analysis of Algorithm')),
          DataCell(Text('Y')),
          DataCell(Text('Y')),
          DataCell(Text('Y')),
          DataCell(Text('Y')),
        ]),
        DataRow(cells: <DataCell>[
          DataCell(Text('19CSE303:Embeded Systems')),
          DataCell(Text('Y')),
          DataCell(Text('Y')),
          DataCell(Text('Y')),
          DataCell(Text('Y')),
        ]),
        DataRow(cells: <DataCell>[
          DataCell(Text('19CSE304:Foundations of Data Science')),
          DataCell(Text('Y')),
          DataCell(Text('Y')),
          DataCell(Text('Y')),
          DataCell(Text('Y')),
        ]),
        DataRow(cells: <DataCell>[
          DataCell(Text('19CSE305:Machine learning')),
          DataCell(Text('Y')),
          DataCell(Text('Y')),
          DataCell(Text('Y')),
          DataCell(Text('Y')),
        ]),
        DataRow(cells: <DataCell>[
          DataCell(Text('19CSE331:Cryptography')),
          DataCell(Text('Y')),
          DataCell(Text('Y')),
          DataCell(Text('Y')),
          DataCell(Text('Y')),
        ]),
        DataRow(cells: <DataCell>[
          DataCell(Text('19SSK301:Soft Skills II')),
          DataCell(Text('Y')),
          DataCell(Text('Y')),
          DataCell(Text('Y')),
          DataCell(Text('Y')),
        ]),
        DataRow(cells: <DataCell>[
          DataCell(Text('19ENV300:Environmental Science')),
          DataCell(Text('Y')),
          DataCell(Text('Y')),
          DataCell(Text('Y')),
          DataCell(Text('Y')),
        ])
      ]),
    );
  }
}


// class registration_statusx extends StatelessWidget {
//   const registration_statusx({ Key? key }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       scrollDirection: Axis.horizontal,
//       child: Container(
//         margin: const EdgeInsets.only(left:10,right: 10),
//         child: Table(
//                     border: TableBorder.all(
//                         color: Colors.black,
//                         width: 1,
//                       ),
//                     columnWidths: const {
//                       0: FixedColumnWidth(200),
//                       1: FixedColumnWidth(110),
//                       2: FixedColumnWidth(110),
//                       3: FixedColumnWidth(110),
//                       4: FixedColumnWidth(110),
//                     },
//                     children: [
//                       TableRow(children: [
//                         cells('Course Name',fontWeight: FontWeight.bold),
//                         cells('Student\nEndorsement',fontWeight: FontWeight.bold),
//                         cells('Department\nEndorsement',fontWeight: FontWeight.bold),
//                         cells('Financial\nEndorsement',fontWeight: FontWeight.bold),
//                         cells('Registrar\nEndorsement',fontWeight: FontWeight.bold)
//                       ]),
//                       TableRow(
//                           children: [
//                             cells('19CSE102:Computer Programming'),
//                             cells('Y'),
//                             cells('Y'),
//                             cells('Y'),
//                             cells('Y'),
//                           ]),
//                       TableRow(
//                           children: [
//                             cells('19CSE302:Design and Analysis of Algorithm'),
//                             cells('Y'),
//                             cells('Y'),
//                             cells('Y'),
//                             cells('Y'),
//                           ]),
//                       TableRow(
//                           children: [
//                             cells('19CSE303:Embeded Systems'),
//                             cells('Y'),
//                             cells('Y'),
//                             cells('Y'),
//                             cells('Y'),
//                           ]),
//                           TableRow(
//                           children: [
//                             cells('19CSE304:Foundations of Data Science'),
//                             cells('Y'),
//                             cells('Y'),
//                             cells('Y'),
//                             cells('Y'),
//                           ]),
//                           TableRow(
//                           children: [
//                             cells('19CSE305:Machine Learning'),
//                             cells('Y'),
//                             cells('Y'),
//                             cells('Y'),
//                             cells('Y'),
//                           ]),
//                           TableRow(
//                           children: [
//                             cells('19ENV300:Environmental Science'),
//                             cells('Y'),
//                             cells('Y'),
//                             cells('Y'),
//                             cells('Y'),
//                           ]),
//                           TableRow(
//                           children: [
//                             cells('19CSE331:Cryptography'),
//                             cells('Y'),
//                             cells('Y'),
//                             cells('Y'),
//                             cells('Y'),
//                           ]),
//                           TableRow(
//                           children: [
//                             cells('19SSK301:Soft Skills II'),
//                             cells('Y'),
//                             cells('Y'),
//                             cells('Y'),
//                             cells('Y'),
//                           ])
//                     ],
//                   ),
//       ),
//     );
//   }
// }