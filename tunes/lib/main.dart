import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(TunesApp());

class TunesApp extends StatelessWidget {
  void playSound(int noteNum) {
    final player = AudioCache();
    player.play('note$noteNum.wav');
  }

  Expanded widgetComponent(int noteNum, Color colorName) {
    return Expanded(
      child: FlatButton(
        color: colorName,
        onPressed: () {
          playSound(noteNum);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Center(
              child: Text(
                "TUNES",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  letterSpacing: 8.5,
                  fontWeight: FontWeight.w100,
                ),
              ),
            ),
            backgroundColor: Colors.black),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              widgetComponent(1, Colors.indigo),
              widgetComponent(2, Colors.blue),
              widgetComponent(3, Colors.teal),
              widgetComponent(4, Colors.green),
              widgetComponent(5, Colors.yellow),
              widgetComponent(6, Colors.orange),
              widgetComponent(7, Colors.red),
            ],
          ),
        ),
      ),
    );
  }
}
