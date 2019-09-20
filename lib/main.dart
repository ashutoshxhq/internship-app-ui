import 'package:flutter/material.dart';
import 'internship.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Internship',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.deepOrange[600],
        accentColor: Colors.white,
        fontFamily: 'poppins-light'
      ),
      home: Internship(),
    );
  }
}
