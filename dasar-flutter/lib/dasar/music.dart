import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'dart:async';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  AudioPlayer audioPlayer;
  String durasi = "00:00:00";

  _MyAppState() {
    audioPlayer = AudioPlayer();
    audioPlayer.onAudioPositionChanged.listen((duration) {
      setState(() {
        durasi = duration.toString();
      });
    });
    audioPlayer.setReleaseMode(ReleaseMode.LOOP);
  }

  void playSound(String url) async {
    await audioPlayer.play(url);
  }

  void pauseSound() async {
    await audioPlayer.pause();
  }

  void stopSound() async {
    await audioPlayer.stop();
  }

  void resumeSound() async {
    await audioPlayer.resume();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Audio Player"),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RaisedButton(
                  child: Text("Play"),
                  onPressed: () {
                    playSound(
                        "https://soundcloud.com/liltexas/lil-texas-kayzo-need-you");
                  },
                ),
                RaisedButton(
                  child: Text("Pause"),
                  onPressed: () {
                    pauseSound();
                  },
                ),
                RaisedButton(
                  child: Text("Stop"),
                  onPressed: () {
                    stopSound();
                  },
                ),
                RaisedButton(
                  child: Text("Resume"),
                  onPressed: () {
                    resumeSound();
                  },
                ),
                Text(
                  durasi,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                )
              ],
            ),
          )),
    );
  }
}
