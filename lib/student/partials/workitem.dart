import 'package:flutter/material.dart';

class WorkItem extends StatelessWidget {
  var imageFile;
  var title;
  var company;
  var positions;
  var value;

  WorkItem(
      this.title, this.company, this.positions, this.value, this.imageFile);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(10),
        child: Row(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width * 0.25,
              height: 100,
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.white,
                        style: BorderStyle.solid,
                        width: 3.0),
                    image: DecorationImage(image: AssetImage(imageFile))),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              child: Flexible(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      title,
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.w800),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.business,
                          size: 20,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(company)
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.people,
                                size: 20,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                positions.toString() + ' Positions',
                                style: TextStyle(color: Colors.black),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.attach_money,
                                size: 20,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                value.toString(),
                                style: TextStyle(color: Colors.black),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
