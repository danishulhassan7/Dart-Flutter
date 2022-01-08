


import 'package:flutter/material.dart';
import 'package:socialfeed/widgets/app_large_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
  TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Menu
          Container(
            padding: const EdgeInsets.only(top: 65, left: 20, right: 20,),
            child: Row(
              children: [
                Icon(Icons.menu, color: Colors.black54,),
                Expanded(child: Container()),
                Container(
                  height: 52,
                  width: 52,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.grey.withOpacity(0.7),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 36,),
          //LargeText
          Container(
            padding: const EdgeInsets.only(left: 18),
            child: AppLargeText(text: "Google Technologies"),
          ),
          SizedBox(height: 36,),
          //TabBar
          Container(
            child: TabBar(
              controller: _tabController,
              tabs: [
                Tab(text: "Places",),
                Tab(text: "Inspirations",),
                Tab(text: "Feelings",),
              ],
            ),
          ),
          Container(
            child: TabBarView(
              controller: _tabController,
              children: [
                Text("Assalam O Alaikum"),
                Text("Waiting..."),
                Text("Walaikum Salam"),
              ]
              ),
          )
        ],
      ),
    );
  }
}