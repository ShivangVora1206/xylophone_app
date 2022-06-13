import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Expanded tiles(int track_no, Color colour){
      return Expanded(
        child: TextButton(
            child: Image.asset('assets/$track_no.jpg'),
          onPressed: () {
            final assetsAudioPlayer = AssetsAudioPlayer();

            assetsAudioPlayer.open(
              Audio("assets/audios/note$track_no.wav"),
            );
          }
        ),
      );
    }
    return MaterialApp(
      home: Scaffold(

        backgroundColor: Colors.white,
        body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                tiles(1, Colors.red),
                tiles(2, Colors.orange),
                tiles(3, Colors.yellow),
                tiles(4, Colors.green),
                tiles(5, Colors.blue),

              ],
            )
        ),
      ),
    );
  }
}
