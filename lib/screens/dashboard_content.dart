import 'package:flutter/material.dart';
import 'package:lead_management/components/custom_appbar.dart';
import 'package:lead_management/form/create_lead.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:tiny_charts/tiny_charts.dart';

class DashBoardContent extends StatefulWidget {
  const DashBoardContent({Key? key}) : super(key: key);

  @override
  State<DashBoardContent> createState() => _DashBoardContentState();
}

class _DashBoardContentState extends State<DashBoardContent> {


  List<DataRow> _createRows() {
    return [

      DataRow(

          cells: [
        DataCell(Text('ID')),
        DataCell(Text('Flutter Basics')),
        DataCell(Text('David John')),
        DataCell(Text('hii')),
        DataCell(Text('ETA')),
        DataCell(Text('Qualified')),
      ]

      ),
      DataRow(cells: [
        DataCell(Text('ID')),
        DataCell(Text('Dart Internals')),
        DataCell(Text('Alex Wick')),
        DataCell(Text('hii')),
        DataCell(Text('ETA')),
        DataCell(Text('Qualified')),
      ]),
      DataRow(cells: [
        DataCell(Text('ID')),
        DataCell(Text('Dart Internals')),
        DataCell(Text('Alex Wick')),
        DataCell(Text('hii')),
        DataCell(Text('ETA')),
        DataCell(Text('Qualified')),
      ]),
      DataRow(cells: [
        DataCell(Text('ID')),
        DataCell(Text('Dart Internals')),
        DataCell(Text('Alex Wick')),
        DataCell(Text('hii')),
        DataCell(Text('ETA')),
        DataCell(Text('Qualified')),
      ]
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomAppBar(),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              // MaterialButton(onPressed: (){
              // },height: 30,
              //   minWidth: 100,
              //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
              //   color: Colors.white,
              //   child: Text('Ideassion',style: TextStyle(color: Colors.black,fontSize: 12),),
              // ),
              Container(
                height: 30,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.white,
                  border: Border.all(color: Colors.black, width: 1.5),
                ),
                child:DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  icon:Image.asset('images/butterfly.png',height: 24,width: 23,),
                  alignment: Alignment.center,
                  focusColor: Colors.black12,
                  underline: null,
                  items: [
                    DropdownMenuItem(
                      child: Text(" Ideassion ",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                      value: "  Ideassion",
                    ),
                    DropdownMenuItem(
                      child: Text(" ITS",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold)),
                      value: " ITS",
                    ),
                    DropdownMenuItem(
                      child: Text("IBCC",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold)),
                      value: "IBCC",
                    ),
                    DropdownMenuItem(
                      child: Text("IITT",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold)),
                      value: "IITT",
                    ),
                    DropdownMenuItem(
                      child: Text("TTL",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold)),
                      value: "TTL",
                    ),
                  ],
                  onChanged: (value) {
                    // handle the change event
                  },
                   value: "  Ideassion",

                ),
              ),
              ),
              SizedBox(
                width: 900,
              ),
              MaterialButton(onPressed:(){CreateLead();},
                height: 35,
                minWidth: 100,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                color: Colors.black,
                child: Text('CREATE  LEAD',style: TextStyle(color: Colors.white,fontSize: 10),),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              // Expanded(
              //   flex:3,
              //   child:
                Align(
                  alignment: Alignment.topLeft,
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Colors.indigo.shade700, Colors.indigo.shade400,Colors.indigo.shade200]
                          )
                        ),
                        height: 100,
                        width: 170,
                        child: Row(
                          children: [
                            Text('Leads Converted',style: TextStyle(color: Colors.white)),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Colors.orange.shade800,Colors.orange.shade500, Colors.orange.shade200],

                          ),
                        ),
                        height: 100,
                        width: 170,
                        child: Row(
                          children: [
                            Text('New Leads',style: TextStyle(color: Colors.white),),
                          ],
                        ),
                      ),
                        SizedBox(
                               width: 10,
                               ),
                      Container(
                             decoration: BoxDecoration(
                             gradient: LinearGradient(
                             colors: [Colors.green.shade900,Colors.green.shade500, Colors.green.shade200],

                         ),
                          ),
                        height: 100,
                          width: 170,
                             child: Row(
                         children: [
                           Text('Active Leads',style: TextStyle(color: Colors.white),),
                           ],
                       ),
                    ),
                        SizedBox(
                            width: 10,
                       ),
                       Container(
                             decoration: BoxDecoration(
                            gradient: LinearGradient(
                            colors: [Colors.red.shade900, Colors.red.shade300],

                         ) ,
                      ),
                           height: 100,
                            width: 160,
                        child: Row(
                            children: [
                             Text('Inactive Leads',style: TextStyle(color: Colors.white),),
                            ],
                         ),
                     ),
                    ],
                  ),
                ) ,
              // ),

              Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    height: 300,
                    width: 300,
                    color: Colors.grey.shade200,
                    child: Row(
                      children: [
                        Text('Lead Funnel')
                      ],
                    ),
                  ),
                ),
            ],
          ),
          // Row(
          //   children: [
          //     Container(
          //       decoration: BoxDecoration(
          //         gradient: LinearGradient(
          //           colors: [Colors.indigo.shade700, Colors.indigo.shade400,Colors.indigo.shade200],
          //           begin: Alignment.topLeft,
          //           end: Alignment.bottomRight,
          //         ),
          //       ),
          //       height: 100,
          //       width: 170,
          //       child: Row(
          //         children: [
          //           Text('Leads Converted',style: TextStyle(color: Colors.white),),
          //         ],
          //       ),
          //     ),
          //     SizedBox(
          //       width: 10,
          //     ),
          //     Container(
          //       decoration: BoxDecoration(
          //         gradient: LinearGradient(
          //           colors: [Colors.orange.shade800,Colors.orange.shade500, Colors.orange.shade200],
          //           begin: Alignment.topLeft,
          //           end: Alignment.bottomRight,
          //         ),
          //       ),
          //       height: 100,
          //       width: 170,
          //       child: Row(
          //         children: [
          //           Text('New Leads',style: TextStyle(color: Colors.white),),
          //         ],
          //       ),
          //     ),
          //     SizedBox(
          //       width: 10,
          //     ),
          //     Container(
          //       decoration: BoxDecoration(
          //         gradient: LinearGradient(
          //           colors: [Colors.green.shade900,Colors.green.shade500, Colors.green.shade200],
          //           begin: Alignment.topLeft,
          //           end: Alignment.bottomRight,
          //         ),
          //       ),
          //       height: 100,
          //       width: 170,
          //       child: Row(
          //         children: [
          //           Text('Active Leads',style: TextStyle(color: Colors.white),),
          //         ],
          //       ),
          //     ),
          //     SizedBox(
          //       width: 10,
          //     ),
          //     Container(
          //       decoration: BoxDecoration(
          //         gradient: LinearGradient(
          //           colors: [Colors.red.shade900, Colors.red.shade300],
          //           begin: Alignment.topLeft,
          //           end: Alignment.bottomRight,
          //         ),
          //       ),
          //       height: 100,
          //       width: 170,
          //       child: Row(
          //         children: [
          //           Text('Inactive Leads',style: TextStyle(color: Colors.white),),
          //         ],
          //       ),
          //     ),
          //     SizedBox(
          //       width: 10,
          //     ),
          //     // Row(
          //     //   children: [
          //     //     Container(
          //     //       height: 500,
          //     //       width: 250,
          //     //       color: Colors.pink,
          //     //     )
          //     //   ],
          //     // ),
          //   ],
          // ),
          // SizedBox(
          //   height: 20,
          // ),
          // Row(
          //   children: [
          //     Container(
          //       height: 200,
          //       width: 450,
          //       color: Colors.white,
          //       child: Row(
          //         crossAxisAlignment: CrossAxisAlignment.start,
          //         children: [
          //           Text('Managed by',style: TextStyle(color: Colors.black),),
          //
          //           Column(
          //             children: [
          //               SizedBox(
          //                 height:80,
          //               ),
          //               TinyBarChart.stacked( data: const <double>[9, 6, 2,10],
          //                 options: const TinyBarChartOptions(
          //                   colors: [
          //                     Color(0xFFFF0000),
          //                     Color(0xBEEE0260),
          //                     Color(0x97FF74AD),
          //                     Colors.pink
          //                   ],
          //                 ),
          //                 width: 280,
          //                 height: 20,),
          //               SizedBox(
          //                 height: 20,
          //               ),
          //               TinyBarChart.stacked( data: const <double>[10, 16, 22,10],
          //                 options: const TinyBarChartOptions(
          //                   colors: [
          //                     Colors.deepPurpleAccent,
          //                     Colors.blueAccent,
          //                     Colors.blueGrey,
          //                     Colors.blue
          //                   ],
          //                 ),
          //                 width: 270,
          //                 height: 20,
          //               ),
          //             ],
          //           ),
          //           ClipRRect(
          //             borderRadius: BorderRadius.circular(10),
          //             child: InkWell(
          //               onTap: () {
          //                 // button tap action
          //               },
          //               child: Container(
          //                 // padding: EdgeInsets.all(10),
          //                 child: Row(
          //                   children: [
          //                     // SizedBox(width: 10),
          //                     // Text("Filter"),
          //                     // Icon(Icons.filter_list_alt),
          //                     Container(
          //                       height: 28,
          //                       width: 80,
          //                       decoration: BoxDecoration(
          //                         borderRadius: BorderRadius.circular(20.0),
          //                         color: Colors.white,
          //                         border: Border.all(color: Colors.black, width: 1.0),
          //                       ),
          //                       child:DropdownButtonHideUnderline(
          //                         child: DropdownButton<String>(
          //                           alignment: Alignment.center,
          //                           focusColor: Colors.black12,
          //                           underline: null,
          //                           items: [
          //                             DropdownMenuItem(
          //                               child: Text(" Filter",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
          //                               value: " Filter",
          //                             ),
          //                             DropdownMenuItem(
          //                               child: Text("ITS",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold)),
          //                               value: "ITS",
          //                             ),
          //                             DropdownMenuItem(
          //                               child: Text("IBCC",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold)),
          //                               value: "IBCC",
          //                             ),
          //                             DropdownMenuItem(
          //                               child: Text("IITT",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold)),
          //                               value: "IITT",
          //                             ),
          //                             DropdownMenuItem(
          //                               child: Text("TTL",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold)),
          //                               value: "TTL",
          //                             ),
          //                           ],
          //                           onChanged: (value) {
          //                             // handle the change event
          //                           },
          //                           value: " Filter",
          //                            icon:Icon(Icons.filter_list_alt,color: Colors.black,size: 20.0,),
          //                         ),
          //                       ),
          //                     ),
          //                   ],
          //                 ),
          //               ),
          //             ),
          //           ),
          //         ],
          //     ),
          //     ),
          //     SizedBox(
          //       width: 15,
          //     ),
          //     Container(
          //       height: 200,
          //       width: 250,
          //       color: Colors.white,
          //       child: Column(
          //         children: [
          //           Text('Lead Status',style: TextStyle(color: Colors.black,)),
          //           SizedBox(
          //             height: 10,
          //           ),
          //           SizedBox(
          //             height: 160,
          //             width: 160,
          //             child:PieChart(
          //               PieChartData(
          //                 sections: [
          //                   PieChartSectionData(value: 70,color: Colors.red.shade900),
          //                   PieChartSectionData(value: 7,color: Colors.deepOrange),
          //                   PieChartSectionData(value: 23,color: Colors.blue.shade900),
          //
          //                 ]
          //               )
          //             ),
          //           )
          //         ],
          //       ),
          //     ),
          //     SizedBox(
          //       width: 12,
          //     ),
          //     // Row(
          //     //   children: [
          //         Container(
          //           child: Text('Lead Funnel'),
          //           height: 300,
          //           width:300,
          //           color: Colors.white,
          //         ),
          //     //   ],
          //     // )
          //   ],
          // ),
          SizedBox(
            height: 15,
          ),
          Column(
            children: [
              Container(
                height: 300,
                width: MediaQuery.of(context).size.width * 0.8,
                color: Colors.white,
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Pending proposals'),
                    SizedBox(
                      height: 35,
                    ),
                    DataTable(
                      columnSpacing: 135.0,
                      headingRowHeight: 30.0,
                      dataRowHeight: 30.0,
                      headingRowColor:
                      MaterialStateColor.resolveWith((states) => Colors.blue.shade100),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),  // this only make bottom rounded and not top
                        color: Colors.white,
                        //  color: index % 2 == 0 ? Colors.grey[200] : Colors.grey[100],
                      ),
                      columns: [
                        DataColumn(label: Text('ID')),
                        DataColumn(label: Text('Opportunity')),
                        DataColumn(label: Text('Client')),
                        DataColumn(label: Text('Managed by')),
                        DataColumn(label: Text('ETA')),
                        DataColumn(label: Text('Status')),
                      ], rows: _createRows(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    ),
    );
  }
}