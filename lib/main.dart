import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Widget buildWedgit(int number, Color newColor) {
    return Expanded(
      flex: 1,
      child: FlatButton(
        color: newColor,
        onPressed: () {
          final AudioCache player = AudioCache();
          player.play('note$number.wav');
        },
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              buildWedgit(1, Colors.red),
              buildWedgit(2, Colors.orange),
              buildWedgit(3, Colors.yellow),
              buildWedgit(4, Colors.green),
              buildWedgit(5, Colors.teal),
              buildWedgit(6, Colors.blue),
              buildWedgit(7, Colors.purple)
            ],
          ),
        ),
      ),
    );
  }
}
