import 'package:capstone_app/homePage.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(myCapstone());
}

class myCapstone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: capstoneApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}


