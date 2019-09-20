import 'package:flutter/material.dart';
import 'partials/taskitem.dart';

class MicroTasks extends StatefulWidget {
  @override
  _MicroTasksState createState() => _MicroTasksState();
}

class _MicroTasksState extends State<MicroTasks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange[400],
        leading: Icon(Icons.folder_open),
        title: Text('Micro Tasks'),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Column(
              children: <Widget>[
                TaskItem('Download mobile app','Webkodes Tech',10, 5000, 'assets/idea.png'),
                TaskItem('Post instagram photo','Webkodes Tech',10, 5000, 'assets/earn.png'),
                TaskItem('Be a spoyl inflencer','Webkodes Tech',10, 5000, 'assets/jobs.png'),
                TaskItem('Like and Comment on social media','Webkodes Tech',10, 5000, 'assets/idea.png'),
                TaskItem('Graphics Designer','Webkodes Tech',10, 5000, 'assets/earn.png'),
                TaskItem('App Developer','Webkodes Tech',10, 5000, 'assets/jobs.png'),
                TaskItem('App Developer','Webkodes Tech',10, 5000, 'assets/jobs.png'),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
