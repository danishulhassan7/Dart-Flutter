

import 'package:flutter/material.dart';
import 'package:socialfeed/pages/navpages/baritem_page.dart';
import 'package:socialfeed/pages/navpages/home_page.dart';
import 'package:socialfeed/pages/navpages/my_page.dart';
import 'package:socialfeed/pages/navpages/search_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({ Key? key }) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
 List pages = [
    HomePage(),
    BarItemPage(),
    SearchPage(),
    MyPage(),
  ];

  int currentIndex = 0;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[0],
      bottomNavigationBar: BottomNavigationBar(
        unselectedFontSize: 0,
        selectedFontSize: 0,
        type: BottomNavigationBarType.shifting,
        backgroundColor: Colors.white,
        onTap: onTap,
        currentIndex: currentIndex,
        selectedItemColor: Colors.black.withOpacity(0.8),
        unselectedItemColor: Colors.grey.withOpacity(0.7),
        showUnselectedLabels: false,
        showSelectedLabels: false,
        elevation: 0,
        items:[
          BottomNavigationBarItem(
            title: Text("Home"),
            icon: Icon(Icons.apps),
          ),
          BottomNavigationBarItem(
            title: Text("Bar"),
            icon: Icon(Icons.bar_chart_sharp),
          ),
          BottomNavigationBarItem(
            title: Text("Search"),
            icon: Icon(Icons.search),
          ),
          BottomNavigationBarItem(
            title: Text("My"),
            icon: Icon(Icons.person),
          ),
        ] 
      ),
    );
  }
}