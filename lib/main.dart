import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

final audioPlayer = AudioCache();
void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: KeypadCreator(),
        ),
      ),
    );
  }
}

class KeypadCreator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        keyCreator(noteNumber: 1, keyColor: Colors.red),
        keyCreator(noteNumber: 2, keyColor: Colors.orange),
        keyCreator(noteNumber: 3, keyColor: Colors.amberAccent),
        keyCreator(noteNumber: 4, keyColor: Colors.green),
        keyCreator(noteNumber: 5, keyColor: Colors.teal[600]),
        keyCreator(noteNumber: 6, keyColor: Colors.blue),
        keyCreator(noteNumber: 7, keyColor: Colors.deepPurple),
      ],
    );
  } //build

  // a function to create a single key
  Widget keyCreator({noteNumber, keyColor}) {
    return Expanded(
      child: FlatButton(
        child: Container(
          color: keyColor,
        ),
        padding: EdgeInsets.all(0),
        onPressed: () {
          audioPlayer.play('note$noteNumber.wav');
        },
      ),
    );
  } // keyCreator() function
} // class
