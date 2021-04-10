import 'package:flutter/material.dart';
//import 'package:english_words/english_words.dart';
//import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: FlatButton(onPressed: (){
              final player = AudioCache();
              player.play('note1.wav');
            },child:Text('ola') ,),
          ),
        ),
      ),
    );
  }
}
