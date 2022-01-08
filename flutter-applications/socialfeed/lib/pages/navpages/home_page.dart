import 'package:flutter/material.dart';
import 'package:socialfeed/misc/colors.dart';
import 'package:socialfeed/widgets/app_large_text.dart';
import 'package:socialfeed/widgets/app_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

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
            padding: const EdgeInsets.only(
              top: 65,
              left: 20,
              right: 20,
            ),
            child: Row(
              children: [
                Icon(
                  Icons.menu,
                  color: Colors.black54,
                ),
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
          SizedBox(
            height: 16,
          ),
          //LargeText
          Container(
            padding: const EdgeInsets.only(left: 18),
            child: AppLargeText(text: "Google Technologies"),
          ),
          SizedBox(
            height: 16,
          ),
          //TabBar
          Container(
            alignment: Alignment.centerLeft,
            child: Align(
              child: TabBar(
                // labelPadding: const EdgeInsets.only(left: 30, right: 30),
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                isScrollable: true,
                indicatorSize: TabBarIndicatorSize.label,
                controller: _tabController,
                indicator: CircleTabIndicator(color: Colors.black45, radius: 4),
                tabs: [
                  Tab(
                    text: "Places",
                  ),
                  Tab(
                    text: "Inspirations",
                  ),
                  Tab(
                    text: "Feelings",
                  ),
                ],
              ),
            ),
          ),
          //TabBarView
          Container(
            padding: const EdgeInsets.only(
              left: 20,
            ),
            height: 300,
            width: double.maxFinite,
            child: TabBarView(controller: _tabController, children: [
              ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: const EdgeInsets.only(right: 10, top: 12),
                    height: 300,
                    width: 190,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      image: DecorationImage(
                        image: AssetImage("img/mountain.jpeg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
              Text("Waiting..."),
              Text("Walaikum Salam"),
            ]),
          ),
          SizedBox(
            height: 22,
          ),
          //Text
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppLargeText(
                  text: "Explore More",
                  size: 21,
                ),
                AppText(
                  text: "See all",
                  color: AppColors.textColor1,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 12,
          ),
          //Explore more items
          Container(
            height: 110,
            width: double.maxFinite,
            margin: const EdgeInsets.only(left: 20),
            child: ListView.builder(
                itemCount: 8,
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, index) {
                  return Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 20, top: 4),
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          image: DecorationImage(
                            image: AssetImage("img/mountain.jpeg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  );
                }),
          ),
        ],
      ),
    );
  }
}

class CircleTabIndicator extends Decoration {
  final Color color;
  double radius;
  CircleTabIndicator({required this.color, required this.radius});
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    // TODO: implement createBoxPainter
    return _CirclePainter(color: color, radius: radius);
  }
}

class _CirclePainter extends BoxPainter {
  final Color color;
  double radius;
  _CirclePainter({required this.color, required this.radius});
  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    Paint _paint = Paint();
    _paint.color = color;
    _paint.isAntiAlias = true;
    final Offset circleOffset = Offset(
        configuration.size!.width / 2 - radius / 2,
        configuration.size!.height - radius);

    canvas.drawCircle(offset + circleOffset, radius, _paint);
  }
}
