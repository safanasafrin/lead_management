import 'package:flutter/material.dart';
import 'package:lead_management/screens/dashboard_content.dart';


class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {

  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              //default so it takes 1/6 of screen
              flex:1,
              child: Container(
              color: Color(0xFF2A2E3E),
                child: Column(
                  children: [
                    DrawerHeader(child:
                    Image.asset('images/logo.png',height: 450,width: 350,)
                    ),
                    ListTile(
                      leading: Icon(Icons.home_outlined,color: Colors.white,),
                      title: Text('Dashboard',style: TextStyle(color: Colors.white),),
                    ),
                    ListTile(
                      leading: Icon(Icons.people_alt_outlined,color: Colors.white,),
                      title: Text('Leads',style: TextStyle(color: Colors.white),),
                    ),
                  ],
                ),
            ),
            ),
            Expanded(
              //it takes 5/6 of screen
              flex: 5,
              child: SingleChildScrollView(
                //color: Colors.white,
                child: DashBoardContent(),
              ),
            ),
          ],
        ),
      ),

    );
  }
}