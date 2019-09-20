import 'package:flutter/material.dart';

class StudentDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Column(
              children: <Widget>[
                Container(
                  alignment: Alignment.topCenter,
                  height: 80.0,
                  width: 80.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(87.5),
                      border: Border.all(
                          color: Colors.white,
                          style: BorderStyle.solid,
                          width: 3.0),
                      image: DecorationImage(
                          image: AssetImage('assets/idea.png'))),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Ashutosh Dubey',
                        style: TextStyle(
                            fontFamily: 'poppins-regular',
                            fontSize: 25.0,
                            //fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            decoration: BoxDecoration(
              color: Colors.deepOrange[400],
            ),
          ),
          ListTile(
            title: Text('Resume'),
            leading: Icon(Icons.insert_drive_file),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          Divider(),
          ListTile(
            title: Text('My Works'),
            leading: Icon(Icons.business_center),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          Divider(),
          ListTile(
            title: Text('My Tasks'),
            leading: Icon(Icons.whatshot),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          Divider(),
          ListTile(
            title: Text('Offers'),
            leading: Icon(Icons.pages),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          Divider(),
          ListTile(
            title: Text('Wallet'),
            leading: Icon(Icons.account_balance_wallet),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          Divider(),
          ListTile(
            title: Text('Profile'),
            leading: Icon(Icons.face),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          Divider(),
          ListTile(
            title: Text('Support'),
            leading: Icon(Icons.contact_mail),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          Divider(),
          ListTile(
            title: Text('Logout'),
            leading: Icon(Icons.lock_open),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          Divider()
        ],
      ),
    );
  }
}
