import 'package:flutter/material.dart';
import 'partials/workitem.dart';

class Internships extends StatefulWidget {
  @override
  _InternshipsState createState() => _InternshipsState();
}

class _InternshipsState extends State<Internships> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange[400],
        leading: Icon(Icons.business),
        title: Text('Internships'),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Column(
              children: <Widget>[
                WorkItem('Web Developer','Webkodes Tech',10, 5000, 'assets/idea.png'),
                WorkItem('Graphics Designer','Webkodes Tech',10, 5000, 'assets/earn.png'),
                WorkItem('App Developer','Webkodes Tech',10, 5000, 'assets/jobs.png'),
                WorkItem('Web Developer','Webkodes Tech',10, 5000, 'assets/idea.png'),
                WorkItem('Graphics Designer','Webkodes Tech',10, 5000, 'assets/earn.png'),
                WorkItem('App Developer','Webkodes Tech',10, 5000, 'assets/jobs.png'),
                WorkItem('App Developer','Webkodes Tech',10, 5000, 'assets/jobs.png'),
                WorkItem('App Developer','Webkodes Tech',10, 5000, 'assets/jobs.png'),
                WorkItem('App Developer','Webkodes Tech',10, 5000, 'assets/jobs.png'),


              ],
            ),
          ),
        ],
      ),
    );
  }
}
