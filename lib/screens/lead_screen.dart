import 'package:flutter/material.dart';
import 'package:lead_management/screens/dashboard_screen.dart';
// import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';


class LeadScreen extends StatefulWidget {
  const LeadScreen({Key? key}) : super(key: key);

  @override
  State<LeadScreen> createState() => _LeadScreenState();
}

class _LeadScreenState extends State<LeadScreen> {
  // List<DataRow> _createRows() {
  //   return [
  //
  //     DataRow(
  //
  //         cells: [
  //           DataCell(Text('ID')),
  //           DataCell(Text('Flutter Basics')),
  //           DataCell(Text('David John')),
  //           DataCell(Text('hii')),
  //           DataCell(Text('ETA')),
  //           DataCell(Text('Qualified')),
  //         ]
  //
  //     ),
  //     DataRow(cells: [
  //       DataCell(Text('ID')),
  //       DataCell(Text('Dart Internals')),
  //       DataCell(Text('Alex Wick')),
  //       DataCell(Text('hii')),
  //       DataCell(Text('ETA')),
  //       DataCell(Text('Qualified')),
  //     ]),
  //     DataRow(cells: [
  //       DataCell(Text('ID')),
  //       DataCell(Text('Dart Internals')),
  //       DataCell(Text('Alex Wick')),
  //       DataCell(Text('hii')),
  //       DataCell(Text('ETA')),
  //       DataCell(Text('Qualified')),
  //     ]),
  //     DataRow(cells: [
  //       DataCell(Text('ID')),
  //       DataCell(Text('Dart Internals')),
  //       DataCell(Text('Alex Wick')),
  //       DataCell(Text('hii')),
  //       DataCell(Text('ETA')),
  //       DataCell(Text('Qualified')),
  //     ]
  //     ),
  //   ];
  // }
  @override
    Widget build(BuildContext context) {
      return   Column(
        children: [
          DashboardScreen(),
          // Container(
          //   height: 300,
          //   width: MediaQuery.of(context).size.width * 0.8,
          //   color: Colors.white,
          //   child:Column(
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     children: [
          //       // Text('Pending proposals'),
          //       SizedBox(
          //         height: 35,
          //       ),
          //       DataTable(
          //         columnSpacing: 135.0,
          //         headingRowHeight: 30.0,
          //         dataRowHeight: 30.0,
          //         headingRowColor:
          //         MaterialStateColor.resolveWith((states) => Colors.blue.shade100),
          //         decoration: BoxDecoration(
          //           borderRadius: BorderRadius.circular(10),  // this only make bottom rounded and not top
          //           color: Colors.white,
          //           //  color: index % 2 == 0 ? Colors.grey[200] : Colors.grey[100],
          //         ),
          //         columns: [
          //           DataColumn(label: Text('ID')),
          //           DataColumn(label: Text('Opportunity')),
          //           DataColumn(label: Text('Client')),
          //           DataColumn(label: Text('Managed by')),
          //           DataColumn(label: Text('ETA')),
          //           DataColumn(label: Text('Status')),
          //         ], rows: _createRows(),
          //       ),
          //     ],
          //   ),
          // ),
        ]
      );

  }
}
