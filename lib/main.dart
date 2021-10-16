import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  // ignore: non_constant_identifier_names
  Expanded Audioplayer(
      {@required final Color color, @required final int notenum}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          final player = AudioCache();
          player.play('note$notenum.wav');
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
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Audioplayer(color: Colors.red, notenum: 1),
              Audioplayer(color: Colors.orange, notenum: 2),
              Audioplayer(color: Colors.yellow, notenum: 3),
              Audioplayer(color: Colors.green, notenum: 4),
              Audioplayer(color: Colors.teal, notenum: 5),
              Audioplayer(color: Colors.blue, notenum: 6),
              Audioplayer(color: Colors.purple, notenum: 7),
            ],
          ),
        ),
      ),
    );
  }
}
