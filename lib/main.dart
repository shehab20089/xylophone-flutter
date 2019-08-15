import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('xylophone'),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              FlatButton(
                color: Colors.red,
                onPressed: () {
                  final AudioCache player = AudioCache();
                  player.play('note1.wav');
                },
              ),
              FlatButton(
                color: Colors.orange,
                onPressed: () {
                  final AudioCache player = AudioCache();
                  player.play('note2.wav');
                },
              ),
              FlatButton(
                color: Colors.yellow,
                onPressed: () {
                  final AudioCache player = AudioCache();
                  player.play('note3.wav');
                },
              ),
              FlatButton(
                color: Colors.green,
                onPressed: () {
                  final AudioCache player = AudioCache();
                  player.play('note4.wav');
                },
              ),
              FlatButton(
                color: Colors.teal,
                onPressed: () {
                  final AudioCache player = AudioCache();
                  player.play('note5.wav');
                },
              ),
              FlatButton(
                color: Colors.blue,
                onPressed: () {
                  final AudioCache player = AudioCache();
                  player.play('note6.wav');
                },
              ),
              FlatButton(
                color: Colors.purple,
                onPressed: () {
                  final AudioCache player = AudioCache();
                  player.play('note7.wav');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
