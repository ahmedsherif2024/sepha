
import 'package:first_app/home_screen.dart';
import 'package:first_app/login_screen.dart';
import 'package:first_app/sepha_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main () {
  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,
     home: HomeScreen(),
   );
  }
}