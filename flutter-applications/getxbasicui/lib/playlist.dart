import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'customcolors.dart' as clr;






class PlayList extends StatefulWidget {
  const PlayList({ Key? key }) : super(key: key);

  @override
  _PlayListState createState() => _PlayListState();
}

class _PlayListState extends State<PlayList> {
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
              padding: const EdgeInsets.only(top: 65, left: 28, right: 28,),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 310,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.arrow_back_ios,
                        size: 20,
                        color: clr.AppColor.secondPageIconColor
                        ),
                        Expanded(child: Container()),
                        Icon(Icons.info_outline,
                        size: 20,
                        color: clr.AppColor.secondPageIconColor
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Text(
                      "Live Score",
                      style: TextStyle(
                        fontSize: 16,
                        color: clr.AppColor.secondPageTitleColor,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Follow us on VistaXPF",
                      style: TextStyle(
                        fontSize: 24,
                        color: clr.AppColor.secondPageTitleColor,
                      ),
                    ),
                    SizedBox(height: 45,),
                    Row(
                      children: [
                        Container(
                          width: 100,
                          height: 37,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            gradient: LinearGradient(
                              colors: [
                                clr.AppColor.secondPageContainerGradient1stColor,
                                clr.AppColor.secondPageContainerGradient2ndColor,
                              ],
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(width: 5,),
                              Icon(Icons.timer,
                              size: 21,
                              color: clr.AppColor.secondPageTopIconColor,
                              ),
                              SizedBox(width: 10,),
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
                        SizedBox(width: 30,),
                        Container(
                          width: 270,
                          height: 37,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            gradient: LinearGradient(
                              colors: [
                                clr.AppColor.secondPageContainerGradient1stColor,
                                clr.AppColor.secondPageContainerGradient2ndColor,
                              ],
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(width: 5,),
                              Icon(Icons.handyman_outlined,
                              size: 21,
                              color: clr.AppColor.secondPageTopIconColor,
                              ),
                              SizedBox(width: 10,),
                              Text(
                                "Don't miss a single ball",
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
          ],
        ),
      ),
    );
  }
}