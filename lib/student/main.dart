import 'package:flutter/material.dart';
import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'offers.dart';
import 'home.dart';
import 'partials/drawer.dart';
import 'internships.dart';
import 'microtasks.dart';

class Student extends StatefulWidget {
  @override
  _StudentState createState() => _StudentState();
}

class _StudentState extends State<Student> {
  int currentIndex;

  @override
  void initState() {
    super.initState();
    currentIndex = 0;
  }

  void changePage(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  Widget bodyWidget(){
    if(currentIndex == 0) {
      return StudentHome();
    }
    else if(currentIndex== 1) {
      return Internships();
    }
    else if(currentIndex == 2) {
      return Offers();
    }
    else if(currentIndex == 3) {
      return MicroTasks();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bodyWidget(),
      drawer: StudentDrawer(),
      bottomNavigationBar: BubbleBottomBar(
        opacity: .3,
        currentIndex: currentIndex,
        onTap: changePage,
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
        elevation: 10,
        hasNotch: true,
        hasInk: false,
        inkColor: Colors.black12,
        items: <BubbleBottomBarItem>[
          BubbleBottomBarItem(
              backgroundColor: Colors.deepOrange,
              icon: Icon(
                Icons.store_mall_directory,
                color: Colors.black87,
              ),
              activeIcon: Icon(
                Icons.store_mall_directory,
                color: Colors.deepOrange,
              ),
              title: Text("Home")),
          BubbleBottomBarItem(
              backgroundColor: Colors.deepOrange,
              icon: Icon(
                Icons.business,
                color: Colors.black87,
              ),
              activeIcon: Icon(
                Icons.business,
                color: Colors.deepOrange,
              ),
              title: Text("Internships")),
        BubbleBottomBarItem(
            backgroundColor: Colors.deepOrange,
            icon: Icon(
              Icons.card_giftcard,
              color: Colors.black87,
            ),
            activeIcon: Icon(
              Icons.card_giftcard,
              color: Colors.deepOrange,
            ),
            title: Text("Offers")),
          BubbleBottomBarItem(
              backgroundColor: Colors.deepOrange,
              icon: Icon(
                Icons.folder_open,
                color: Colors.black87,
              ),
              activeIcon: Icon(
                Icons.folder_open,
                color: Colors.deepOrange,
              ),
              title: Text("Micro Tasks")),
        ],
      ),
    );
  }
}
