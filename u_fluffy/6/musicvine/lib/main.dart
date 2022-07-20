import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(MusicVine());

class MusicVine extends StatelessWidget {
  void playMusicVine(int musicVineNumber) {
    dynamic player = AudioCache();
    player.play('note$musicVineNumber.wave');
  }

  Expanded mainMusicWidget({Color primary, int musicVineNumber}) {
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: primary,
        ),
        onPressed: () {
          playMusicVine(musicVineNumber);
        },
        child: Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.orange,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              mainMusicWidget(primary:Colors.pink, musicVineNumber: 1),
              mainMusicWidget(primary:Colors.teal, musicVineNumber: 2),
              mainMusicWidget(primary:Colors.brown, musicVineNumber: 3),
              mainMusicWidget(primary:Colors.purple, musicVineNumber: 4),
              mainMusicWidget(primary:Colors.yellow, musicVineNumber: 5),
              mainMusicWidget(primary:Colors.orange, musicVineNumber: 6),
              mainMusicWidget(primary:Colors.grey,  musicVineNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
