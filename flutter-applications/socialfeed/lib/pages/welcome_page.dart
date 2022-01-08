import 'package:flutter/material.dart';
import 'package:socialfeed/misc/colors.dart';
import 'package:socialfeed/widgets/app_large_text.dart';
import 'package:socialfeed/widgets/app_text.dart';
import 'package:socialfeed/widgets/responsive_button.dart';


class WelcomePage extends StatefulWidget {
  const WelcomePage({ Key? key }) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {

  List images = [
    "welcome-one.png",
    "welcome-two.png",
    "welcome-three.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: images.length,
        itemBuilder: (_,index){
          return Container(
            width: double.maxFinite,
            height: double.maxFinite,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "img/"+images[index]
                ), 
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              margin: const EdgeInsets.only(top: 120, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppLargeText(text: "Tourism"),
                      AppText(text: "Hiking is Love", size: 30,),
                      SizedBox(height: 17,),
                      Container(
                        width: 255,
                        child: AppText(
                          text: "Mountains Hiking becomes more beautiful experience and joyful when you are with your friends",
                          color: AppColors.textColor2,
                          size: 14,
                          ),
                      ),
                      SizedBox(height: 15,),
                      ResponsiveButton(width: 105,),
                    ],
                  ),
                  
                  Column(
                    children: List.generate(3, (indexDots) {
                      return Container(
                        margin: const EdgeInsets.only(bottom: 2),
                        width: 9,
                        height: index == indexDots ? 25 : 9 ,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9),
                          color: index == indexDots ? AppColors.mainColor : AppColors.mainColor.withOpacity(0.5)
                        ),
                      );
                    }
                    ),
                  ),
                ],
              ),
            ),
          );
      }),
    );
  }
}
