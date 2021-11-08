// Text Style

import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan text style"),
        ),
        body: Center(
          child: Text(
            "Ini Body",
            style: TextStyle(
              fontFamily: "CrashLanding",
              fontStyle: FontStyle.italic,
              fontSize: 30,
              decoration: TextDecoration.overline,
              decorationColor: Colors.black87,
              decorationThickness: 2,
              decorationStyle: TextDecorationStyle.wavy,
            ),
          ),
        ),
      ),
    );
  }
}
