import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'student/main.dart';
class Internship extends StatefulWidget {
  @override
  _InternshipState createState() => _InternshipState();
}

class _InternshipState extends State<Internship> {

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
        statusBarColor: Colors.deepOrange[400],
        //or set color with: Color(0xFF0000FF)
        statusBarBrightness: Brightness.light));
    return Student();
  }
}
