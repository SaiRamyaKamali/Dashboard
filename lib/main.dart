//import 'package:fitness_app/pages/welcome.dart';
import 'package:flutter/material.dart';
//import 'dashboard.dart';
import'package:fithale/Screens/dashboard.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fitness App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Color(0XFF6D3FFF),
        accentColor: Color(0XFF233C63),
        fontFamily: 'Poppins',
      ),
     //home: Welcome(),
     home: Dashboard(),
    );
  }
}

//class Dashboard extends StatefulWidget {
  //    @override
 //     _DashboardState createState() => _DashboardState();
 //     }



