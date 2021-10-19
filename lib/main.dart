

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
//import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {

  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play("note$soundNumber.wav");
  }
  Expanded buildKey({Color? color, required int soundNumber}) {
    return Expanded(
      child: TextButton(
        onPressed: (){
          playSound(soundNumber);
        },
        child: Text(""),
        style: TextButton.styleFrom(
            primary: Colors.red,
            backgroundColor: color,
            onSurface: Colors.grey
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.red,soundNumber: 1),
              buildKey(color: Colors.orange,soundNumber: 2),
              buildKey(color: Colors.yellow,soundNumber: 3),
              buildKey(color: Colors.green,soundNumber: 4),
              buildKey(color: Colors.blue,soundNumber: 5),
              buildKey(color: Colors.brown,soundNumber: 6),
              buildKey(color: Colors.white,soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
