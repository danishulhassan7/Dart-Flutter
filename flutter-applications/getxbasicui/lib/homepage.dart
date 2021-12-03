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
        padding: const EdgeInsets.only(
          top: 50,
          left: 30,
          right: 30
        ),
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
                  size: 20,
                  color: clr.AppColor.homePageIcons
                ),
                SizedBox(width: 6,),
                Icon(Icons.calendar_today_outlined,
                  size: 20,
                  color: clr.AppColor.homePageIcons
                ),
                SizedBox(
                  width: 12,
                ),
                Icon(Icons.arrow_forward_ios,
                  size: 20,
                  color: clr.AppColor.homePageIcons
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
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
                SizedBox(width: 5,),
                Icon(Icons.arrow_forward,
                size: 20,
                color: clr.AppColor.homePageIcons,
                )
              ],
            ),
            SizedBox(height: 20,),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 230,
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
                    blurRadius:12,
                    color: clr.AppColor.gradientSecond.withOpacity(0.2),
                  ),
                ]
              ),
            ),
          ],
        ),
      ),
    );
  }
}
