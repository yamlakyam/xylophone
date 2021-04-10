import 'package:flutter/material.dart';

//import 'package:english_words/english_words.dart';
//import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MyApp());
}

Expanded buildKey(Color col, int num){
  return Expanded(
    child: FlatButton(
      color: col,
      onPressed: () {
        playNotes(num);
      },
      child: Text('ola'),
    ),
  );
}

void playNotes(int noteNum) {
  final player = AudioCache();
  player.play('assets_note$noteNum.wav');
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(Colors.blue, 1),
              buildKey(Colors.blueAccent, 2),
              buildKey(Colors.blueGrey, 3),
              buildKey(Colors.lightBlue, 4),
              buildKey(Colors.lightBlueAccent, 5),
              buildKey(Colors.deepPurpleAccent, 6),
              buildKey(Colors.deepPurple, 7),
            ],
          ),
        ),
      ),
    );
  }
}
