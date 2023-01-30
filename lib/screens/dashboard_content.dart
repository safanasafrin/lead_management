import 'package:flutter/material.dart';
import 'package:lead_management/components/custom_appbar.dart';
import 'package:lead_management/form/create_lead.dart';

class DashBoardContent extends StatefulWidget {
  const DashBoardContent({Key? key}) : super(key: key);

  @override
  State<DashBoardContent> createState() => _DashBoardContentState();
}

class _DashBoardContentState extends State<DashBoardContent> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          CustomAppBar(),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              MaterialButton(onPressed: (){
              },height: 30,
                minWidth: 100,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
                color: Colors.white,
                child: Text('Ideassion',style: TextStyle(color: Colors.black,fontSize: 12),),
              ),
              SizedBox(
                width: 900,
              ),
              MaterialButton(onPressed:(){CreateLead();},
                height: 30,
                minWidth: 100,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                color: Colors.black,
                child: Text('CREATE LEAD',style: TextStyle(color: Colors.white,fontSize: 10),),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.indigo.shade500, Colors.indigo.shade200],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                height: 100,
                width: 170,
                child: Row(
                  children: [
                    Text('Leads Converted',style: TextStyle(color: Colors.white),),
                  ],
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.orange.shade800, Colors.orange.shade300],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
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
                    colors: [Colors.green.shade800, Colors.green.shade200],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
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
                    colors: [Colors.redAccent.shade700, Colors.redAccent.shade100],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                height: 100,
                width: 170,
                child: Row(
                  children: [
                    Text('Inactive Leads',style: TextStyle(color: Colors.white),),
                  ],
                ),
              ),
              SizedBox(
                width: 10,
              ),
              // Row(
              //   children: [
              //     Container(
              //       height: 500,
              //       width: 250,
              //       color: Colors.pink,
              //     )
              //   ],
              // ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                height: 200,
                width: 450,
                color: Colors.white,
                child: Row(
                  children: [
                    Text('Managed by',style: TextStyle(color: Colors.black),),
                  ],
              ),
              ),
              SizedBox(
                width: 15,
              ),
              Container(
                height: 200,
                width: 250,
                color: Colors.white,
                child: Row(
                  children: [
                    Text('Lead Status',style: TextStyle(color: Colors.black),),
                  ],
                ),
              ),

            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Container(
                height: 300,
                width: 990,
                color: Colors.white,
              )
            ],
          ),
        ],
      ),
    ),
    );
  }
}





