import 'dart:io';

import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(
      XylophoneApp()
  );
}

class XylophoneApp extends StatelessWidget {
  Expanded playAudio(String noteName, Color color){
    return Expanded(
      child: FlatButton(
        onPressed: (){
          final player = AudioCache();
          player.play('$noteName.wav');
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(40.0),
          child: Container(
            color: color,
            width: 1.0 / 0.0,
            child: Center(
              child: Text(
                noteName,
                style: TextStyle(
                  fontSize: 40,
                ),
              ),
            ),

          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('NOTES'),
        ),
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(height: 20.0,),
              playAudio('note1', Colors.red),
              SizedBox(height: 10.0,),
              playAudio('note2', Colors.orange),
              SizedBox(height: 10.0,),
              playAudio('note3',Colors.yellow),
              SizedBox(height: 10.0,),
              playAudio('note4',Colors.green),
              SizedBox(height: 10.0,),
              playAudio('note5',Colors.teal),
              SizedBox(height: 10.0,),
              playAudio('note6',Colors.blue),
              SizedBox(height: 10.0,),
              playAudio('note7',Colors.purple),
              SizedBox(height: 20.0,),
            ],
          ),
        ),
      ),
    );
  }

}