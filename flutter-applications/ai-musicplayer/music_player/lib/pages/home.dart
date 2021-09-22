import 'package:flutter/material.dart';
import 'package:music_player/utils/ai_utils.dart';
import 'package:velocity_x/velocity_x.dart';


class Home extends StatelessWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      body: Stack(
        children: <Widget>[
          VxAnimatedBox()
            .size(context.screenWidth, context.screenHeight)
            .withGradient(LinearGradient(
              colors: [
                AiColors.primaryClr1,
                AiColors.primaryClr2
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight
            ))
            .make(),
            AppBar(
              title: "AI MusicPlayer".text.xl2.bold.white.make().shimmer(
                primaryColor: Vx.purple400,
                secondaryColor: Vx.white
              ),
              backgroundColor: Colors.transparent,
              centerTitle: true,
              elevation: 0.0,
            ).h(60.0).p(12.0)
        ],
      ),
    );
  }
}