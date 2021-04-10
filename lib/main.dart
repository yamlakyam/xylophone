import 'package:flutter/material.dart';

//import 'package:english_words/english_words.dart';
//import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MyApp());
}
void playNotes(int noteNum){
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
            children: [
              FlatButton(
                color: Colors.blue,
                onPressed: () {
                  playNotes(1);
                },
                child: Text('ola'),
              ),FlatButton(
                color: Colors.blueAccent,
                onPressed: () {
                  playNotes(2);
                },
                child: Text('ola'),
              ),FlatButton(
                color: Colors.blueGrey,
                onPressed: () {
                  playNotes(3);
                },
                child: Text('ola'),
              ),FlatButton(
                color: Colors.lightBlue,
                onPressed: () {
                  playNotes(4);
                },
                child: Text('ola'),
              ),FlatButton(
                color: Colors.lightBlueAccent,
                onPressed: () {
                  playNotes(5);
                },
                child: Text('ola'),
              ),FlatButton(
                color: Colors.deepPurpleAccent,
                onPressed: () {
                  playNotes(6);
                },
                child: Text('ola'),
              ), FlatButton(
                color: Colors.deepPurple,
                onPressed: () {
                  playNotes(7);
                },
                child: Text('ola'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
