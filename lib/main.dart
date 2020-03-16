import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int a) {
    final player = AudioCache();
    player.play('note$a.wav');
  }

  Expanded buildKey({Color color, int a}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(a);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.black,
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildKey(color: Colors.red, a: 1),
                buildKey(color: Colors.blue, a: 2),
                buildKey(color: Colors.purple, a: 3),
                buildKey(color: Colors.orange, a: 4),
                buildKey(color: Colors.green, a: 5),
                buildKey(color: Colors.pink, a: 6),
                buildKey(color: Colors.teal, a: 7),
              ],
            ),
          )),
    );
  }
}
