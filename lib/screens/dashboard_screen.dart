import 'package:flutter/material.dart';
import 'package:lead_management/screens/dashboard_content.dart';
import 'package:lead_management/screens/lead_screen.dart';
import 'package:lead_management/responsive.dart';


class DashboardScreen extends StatelessWidget {
  // const DashboardScreen({Key? key}) : super(key: key);

  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if(Responsive.isDesktop(context))
              Expanded(
              //default so it takes 1/6 of screen
              flex:1,
              child: Container(
              color: Color(0xFF2A2E3E),
                child: Column(
                  children: [
                    DrawerHeader(child:
                    Image.asset('images/logo.png',height: 400,width: 300,)
                    ),

                    ListTile(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => DashboardScreen()),);

                      },
                      leading: Icon(Icons.home_outlined,color: Colors.white,),
                      title: Text('Dashboard',style: TextStyle(color: Colors.white),),
                    ),
                    ListTile(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => LeadScreen()),);

                      },
                      leading: Icon(Icons.people_alt_outlined,color: Colors.white,),
                      title: Text('Leads',style: TextStyle(color: Colors.white),),
                    ),
                  ],
                ),
            ),
            ),
            if(Responsive.isDesktop(context))
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