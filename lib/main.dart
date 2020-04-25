import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  void playSound(int soundNo){
    final player = AudioCache();
    player.play('sound$soundNo.wav');
  }

  Expanded buildSingleNote(Color color,int soundNo){
   return Expanded(child: FlatButton(onPressed:(){ playSound(soundNo);},
       color: color,
//     child: Text(
//     'Play sound$soundNo',style: TextStyle(color: Colors.blueAccent),
//   )
   )
   );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Audio Player',
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildSingleNote(Colors.white,1),
              buildSingleNote(Colors.black,2),
              buildSingleNote(Colors.white,3),
              buildSingleNote(Colors.black,4),
              buildSingleNote(Colors.white,5),
              buildSingleNote(Colors.black,6),
              buildSingleNote(Colors.white,7),
              buildSingleNote(Colors.black,8),
              buildSingleNote(Colors.white,9),
              buildSingleNote(Colors.black,10),
              buildSingleNote(Colors.white,11),
              buildSingleNote(Colors.black,12),


            ],
          ),

        ),
      ),
    );
  }
}
