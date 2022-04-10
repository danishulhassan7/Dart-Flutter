
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'customcolors.dart' as clr;

class PlayList extends StatefulWidget {
  const PlayList({Key? key}) : super(key: key);

  @override
  _PlayListState createState() => _PlayListState();
}

class _PlayListState extends State<PlayList> {
  List info = [];

  @override

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              clr.AppColor.gradientFirst.withOpacity(0.8),
              clr.AppColor.gradientSecond,
            ],
            begin: const FractionalOffset(0.0, 0.4),
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 65,
                left: 28,
                right: 28,
              ),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 230,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Get.back();
                          },
                          child: Icon(Icons.arrow_back_ios,
                              size: 20,
                              color: clr.AppColor.secondPageIconColor),
                        ),
                        Expanded(child: Container()),
                        Icon(Icons.info_outline,
                            size: 20, color: clr.AppColor.secondPageIconColor),
                      ],
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    Text(
                      "Live Score",
                      style: TextStyle(
                        fontSize: 16,
                        color: clr.AppColor.secondPageTitleColor,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Follow us on VistaXPF",
                      style: TextStyle(
                        fontSize: 24,
                        color: clr.AppColor.secondPageTitleColor,
                      ),
                    ),
                    const SizedBox(
                      height: 45,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 100,
                          height: 37,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            gradient: LinearGradient(
                              colors: [
                                clr.AppColor
                                    .secondPageContainerGradient1stColor,
                                clr.AppColor
                                    .secondPageContainerGradient2ndColor,
                              ],
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const SizedBox(
                                width: 5,
                              ),
                              Icon(
                                Icons.timer,
                                size: 21,
                                color: clr.AppColor.secondPageTopIconColor,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                "59 mins",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: clr.AppColor.secondPageTopIconColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        Container(
                          width: 170,
                          height: 37,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            gradient: LinearGradient(
                              colors: [
                                clr.AppColor
                                    .secondPageContainerGradient1stColor,
                                clr.AppColor
                                    .secondPageContainerGradient2ndColor,
                              ],
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:  [
                              const SizedBox(
                                width: 5,
                              ),
                              Icon(
                                Icons.handyman_outlined,
                                size: 21,
                                color: clr.AppColor.secondPageTopIconColor,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Ball by ball",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: clr.AppColor.secondPageTopIconColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(75),
                  ),
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 35,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 25,
                        ),
                        Text(
                          "Highlights : Pak V Aus",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: clr.AppColor.circuitsColor,
                          ),
                        ),
                        Expanded(child: Container()),
                        Row(
                          children: [
                            Icon(
                              Icons.loop,
                              size: 20,
                              color: clr.AppColor.loopColor,
                            ),
                            const SizedBox(
                              width: 7,
                            ),
                            Text(
                              "Next Match",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: clr.AppColor.setsColor,
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      height: 180,
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.only(left: 30, right:30, top:10,),
                      child: Stack(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 30),
                            width: MediaQuery.of(context).size.width,
                            height: 120,
                            decoration: BoxDecoration(
                              color: clr.AppColor.homePageDetail,
                              borderRadius: BorderRadius.circular(20),
                              image: const DecorationImage(
                                image: AssetImage("assets/card.jpg"),
                                fit: BoxFit.fill,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 20,
                                  offset: const Offset(8, 12),
                                  color: clr.AppColor.gradientSecond
                                      .withOpacity(0.4),
                                ),
                                BoxShadow(
                                    blurRadius: 20,
                                    offset: const Offset(-2, -6),
                                    color: clr.AppColor.gradientSecond
                                        .withOpacity(0.3)),
                              ],
                            ),
                          ),
                          Container(
                            height: 210,
                            width: MediaQuery.of(context).size.width,
                            margin:
                                const EdgeInsets.only(right: 200, bottom: 65),
                            decoration: BoxDecoration(
                              // color: Colors.redAccent.withOpacity(0.4),
                              borderRadius: BorderRadius.circular(20),
                              image: const DecorationImage(
                                image: AssetImage("assets/figure.png"),
                                // fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Container(
                            height: 100,
                            width: double.maxFinite,
                            // color: Colors.redAccent.withOpacity(0.3),
                            margin: const EdgeInsets.only(
                              left: 165,
                              top: 42,
                              right: 10,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Cricket: XPF",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: clr.AppColor.homePageDetail,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                RichText(
                                  text: TextSpan(
                                    text: "We are Live\n",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: clr.AppColor.homePagePlanColor,
                                    ),
                                    children: const  [
                                      TextSpan(
                                        text: "Watch Live",
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
