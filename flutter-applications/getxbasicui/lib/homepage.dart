import 'dart:ui';

import 'package:flutter/material.dart';
import 'customcolors.dart' as clr;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: clr.AppColor.homePageBackground,
      body: Container(
        padding: const EdgeInsets.only(top: 50, left: 30, right: 30),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "FutureTechWalay",
                  style: TextStyle(
                      fontSize: 30,
                      color: clr.AppColor.homePageTitle,
                      fontWeight: FontWeight.bold),
                ),
                Expanded(child: Container()),
                Icon(Icons.arrow_back_ios,
                    size: 20, color: clr.AppColor.homePageIcons),
                SizedBox(
                  width: 6,
                ),
                Icon(Icons.calendar_today_outlined,
                    size: 20, color: clr.AppColor.homePageIcons),
                SizedBox(
                  width: 12,
                ),
                Icon(Icons.arrow_forward_ios,
                    size: 20, color: clr.AppColor.homePageIcons),
              ],
            ),
            SizedBox(height: 30,),
            Row(
              children: [
                Text(
                  "Join our program",
                  style: TextStyle(
                      fontSize: 20,
                      color: clr.AppColor.homePageSubtitle,
                      fontWeight: FontWeight.bold),
                ),
                Expanded(child: Container()),
                Text(
                  "Details",
                  style: TextStyle(
                    fontSize: 20,
                    color: clr.AppColor.homePageDetail,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.arrow_forward,
                  size: 20,
                  color: clr.AppColor.homePageIcons,
                )
              ],
            ),
            SizedBox(height: 20,),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 220,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      clr.AppColor.gradientFirst.withOpacity(0.8),
                      clr.AppColor.gradientSecond.withOpacity(0.9),
                    ],
                    begin: Alignment.bottomLeft,
                    end: Alignment.centerRight,
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                    topRight: Radius.circular(65),
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(7, 10),
                      blurRadius: 12,
                      color: clr.AppColor.gradientSecond.withOpacity(0.2),
                    ),
                  ]),
              child: Container(
                padding: const EdgeInsets.only(left: 16, top: 26, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Live Score",
                      style: TextStyle(
                        fontSize: 16,
                        color: clr.AppColor.homePageContainerTextSmall,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Follow us to get",
                      style: TextStyle(
                        fontSize: 24,
                        color: clr.AppColor.homePageContainerTextSmall,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Ball by ball updates",
                      style: TextStyle(
                        fontSize: 24,
                        color: clr.AppColor.homePageContainerTextSmall,
                      ),
                    ),
                    SizedBox(height: 30,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.timer,
                              size: 20,
                              color: clr.AppColor.homePageContainerTextSmall,
                            ),
                            SizedBox(
                              width: 7,
                            ),
                            Text(
                              "30 minutes",
                              style: TextStyle(
                                fontSize: 14,
                                color: clr.AppColor.homePageContainerTextSmall,
                              ),
                            ),
                          ],
                        ),
                        Expanded(child: Container()),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            boxShadow: [
                              BoxShadow(
                              color: clr.AppColor.gradientFirst,
                              offset: Offset(6, 7),
                              blurRadius: 12,
                            ),
                            ],
                          ),
                          child: Icon(
                            Icons.play_circle_fill_outlined,
                            size: 50,
                            color: clr.AppColor.homePageContainerTextSmall,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 180,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 30) ,
                    width: MediaQuery.of(context).size.width,
                    height: 120,
                    decoration: BoxDecoration(
                      color: clr.AppColor.homePageDetail,
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/card.jpg"
                        ),
                        fit: BoxFit.fill,
                      ),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 20,
                          offset: Offset(8, 12),
                          color: clr.AppColor.gradientSecond.withOpacity(0.4),
                        ),
                        BoxShadow(
                          blurRadius: 20,
                          offset: Offset(-2, -6),
                          color: clr.AppColor.gradientSecond.withOpacity(0.3)
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 210,
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.only(right: 230, bottom: 45),
                    decoration: BoxDecoration(
                      // color: Colors.redAccent.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/figure.png"
                        ),
                        // fit: BoxFit.fill,
                      ),
                    ),
                  ),
              ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
