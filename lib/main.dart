import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsound(int key) {
    final player = AudioCache();
    player.play('note$key.wav');
  }

  Expanded demo({Color color, int key}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playsound(key);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                demo(color: Colors.purple, key: 1),
                demo(color: Colors.teal, key: 2),
                demo(color: Colors.blue, key: 3),
                demo(color: Colors.green, key: 4),
                demo(color: Colors.yellow, key: 5),
                demo(color: Colors.orange, key: 6),
                demo(color: Colors.red, key: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
