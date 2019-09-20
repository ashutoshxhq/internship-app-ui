import 'package:flutter/material.dart';
import 'partials/workitem.dart';
import 'package:flutter/services.dart';
class StudentHome extends StatefulWidget {
  @override
  _StudentHomeState createState() => _StudentHomeState();
}

class _StudentHomeState extends State<StudentHome> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[UpperPart(), LowerPart()],
    );
  }
}

class LowerPart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
        statusBarColor: Colors.deepOrange[400],
        //or set color with: Color(0xFF0000FF)
        statusBarBrightness: Brightness.light));
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
          child: Column(
            children: <Widget>[
              Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: Text(
                          'Internships for you',
                          style:
                              TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        child: Text(
                          'More',
                          style:
                              TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  )),
              WorkItem('Web Developer','Webkodes Tech',10, 5000, 'assets/idea.png'),
              WorkItem('Graphics Designer','Webkodes Tech',10, 5000, 'assets/earn.png'),
              WorkItem('App Developer','Webkodes Tech',10, 5000, 'assets/jobs.png'),


            ],
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
          //color: Color(0xFF101e38),
          color: Colors.deepOrange[400],
          child: Column(
            children: <Widget>[
              Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: Text(
                          'Latest Internsips and Tasks',
                          style: TextStyle(
                              fontSize: 18,color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  )),
              WorkItem('Web Developer','Webkodes Tech',10, 5000, 'assets/idea.png'),
              WorkItem('Web Developer','Webkodes Tech',10, 5000, 'assets/idea.png'),
              WorkItem('Web Developer','Webkodes Tech',10, 5000, 'assets/idea.png'),

            ],
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
          child: Column(
            children: <Widget>[
              Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: Text(
                          'Trending Internships / Tasks',
                          style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  )),
              WorkItem('Web Developer','Webkodes Tech',10, 5000, 'assets/idea.png'),
              WorkItem('Web Developer','Webkodes Tech',10, 5000, 'assets/idea.png'),
              WorkItem('Web Developer','Webkodes Tech',10, 5000, 'assets/idea.png'),


            ],
          ),
        ),
      ],
    );
  }
}

class UpperPart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              height: 200.0,
              width: double.infinity,
              color: Colors.deepOrange[400],
            ),
            Positioned(
              bottom: 130.0,
              left: -50.0,
              top: 10,
              right: MediaQuery.of(context).size.width * 0.8,
              child: Container(
                  height: 10.0,
                  width: 300.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(150.0),
                      color: Colors.deepOrange[300].withOpacity(0.5))),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 15.0),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.topLeft,
                        child: Builder(
                          builder: (context) => IconButton(
                                icon: Icon(Icons.menu),
                                onPressed: () =>
                                    Scaffold.of(context).openDrawer(),
                                color: Colors.white,
                                iconSize: 30.0,
                              ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.topRight,
                        height: 50.0,
                        width: 50.0,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/ye.png'))),
                      ),
                      Container(
                        alignment: Alignment.topRight,
                        height: 50.0,
                        width: 50.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                            border: Border.all(
                                color: Colors.white,
                                style: BorderStyle.solid,
                                width: 2.0),
                            image: DecorationImage(
                                image: AssetImage('assets/idea.png'))),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.0),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text(
                    'Looking for something ?',
                    style: TextStyle(
                        fontFamily: 'poppins-light',
                        fontSize: 23.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 12.0),
                Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Material(
                    elevation: 1.5,
                    borderRadius: BorderRadius.circular(25.0),
                    child: TextFormField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            suffixIcon: Icon(Icons.search,
                                color: Colors.grey, size: 30.0),
                            contentPadding: EdgeInsets.only(
                                left: 25.0,
                                top: 15.0,
                                bottom: 15.0,
                                right: 35.0),
                            hintText: 'Search for something here',
                            hintStyle: TextStyle(
                                color: Colors.grey,
                                fontFamily: 'poppins-light'))),
                  ),
                ),
                SizedBox(height: 10.0)
              ],
            )
          ],
        ),
      ],
    );
  }
}
