import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(emojiRoll());
}

// ignore: camel_case_types
class emojiRoll extends StatefulWidget {
  @override
  _emojiRollState createState() => _emojiRollState();
}

// ignore: camel_case_types
class _emojiRollState extends State<emojiRoll> {
  int leftCount = 3;
  int rightCount = 1;
  Random rnd = new Random();

  void changeEmojiCount() {
    setState(() {
      leftCount = 1 + rnd.nextInt(4); //excludes 4
      rightCount = 1 + rnd.nextInt(4); //excludes 4
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue[300],
        appBar: AppBar(
          title: Center(
            child: Text('Emoji Roll'),
          ),
          backgroundColor: Colors.blue[700],
        ),
        body: SafeArea(
          child: Center(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: FlatButton(
                    onPressed: () {
                      changeEmojiCount();
                    },
                    child: Image.asset('images/emoji$leftCount.png'),
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    onPressed: () {
                      changeEmojiCount();
                    },
                    child: Image.asset('images/emoji$rightCount.png'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
