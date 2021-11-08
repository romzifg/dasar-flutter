import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:qrscan/qrscan.dart' as scanner;
import 'dart:async';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Flutter Typography"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Contoh 01",
              style: TextStyle(fontSize: 20),
            ),
            Text(
              "Contoh 02 (Small Caps)",
              style: TextStyle(
                  fontSize: 20, fontFeatures: [FontFeature.enable('smcp')]),
            ),
            Text(
              "Contoh 1/2 (Small Caps & Frac)",
              style: TextStyle(fontSize: 20, fontFeatures: [
                FontFeature.enable('smcp'),
                FontFeature.enable('frac')
              ]),
            ),
            Text(
              "Contoh 04 (Small Caps)",
              style: TextStyle(
                  fontSize: 20, fontFeatures: [FontFeature.enable('smcp')]),
            ),
          ],
        ),
      ),
    ));
  }
}
