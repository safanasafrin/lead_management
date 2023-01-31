import 'package:flutter/material.dart';
import 'package:lead_management/screens/dashboard_screen.dart';
import 'package:lead_management/responsive.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                // Colors.black87,
                // Colors.black26,
                // Colors.black12
                Colors.purpleAccent.shade100,
                Colors.indigoAccent.shade100
              ]
            )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('images/logo.png',height: 280,width: 350),
              Container(
                height: 350,
                width: 500,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // SizedBox(height: 30,),
                    // Text('Hello'),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      width: 380,
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Email Address',
                          suffixIcon: Icon(Icons.email_outlined)

                        ),
                      ),
                    ),
                    SizedBox(
                      height:50,
                    ),
                    Container(
                      width: 380,
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            labelText: 'Password',
                            suffixIcon: Icon(Icons.remove_red_eye_outlined)

                        ),
                      ),
                    ),
                    SizedBox(
                      height:40,
                    ),

                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => DashboardScreen()),);
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius:BorderRadius.circular(20.0),
                          gradient: LinearGradient(
                            colors: [
                              // Colors.black26,
                              // Colors.black38
                              Colors.indigoAccent,
                              Colors.purpleAccent,

                            ]
                          )
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text('Login',style: TextStyle(fontSize: 20,),),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
