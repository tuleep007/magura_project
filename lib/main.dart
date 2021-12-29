import 'package:flutter/material.dart';
import 'package:projecttuleep/pages/home.dart';
import 'package:projecttuleep/pages/login.dart';
import 'package:projecttuleep/pages/routes.dart';


void main() {
  runApp(MyApps());
}

class MyApps extends StatefulWidget {
  const MyApps({Key? key}) : super(key: key);

  @override
  _MyAppsState createState() => _MyAppsState();
}

class _MyAppsState extends State<MyApps> {
  @override

  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,

      routes: {
        MyRoute.rootRoute: (context) => LoginPage(),
        MyRoute.loginRoute: (context) => LoginPage(),
        MyRoute.homeRoute: (context) => HomePage(),
      },
    );
  }
}
