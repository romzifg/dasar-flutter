// margin, padding, & container

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
          title: const Text("Latihan Container"),
        ),
        body: Container(
          color: Colors.red,
          margin: const EdgeInsets.all(10),
          child: Container(
            color: Colors.white,
            margin: const EdgeInsets.fromLTRB(10, 20, 30, 20),
            padding: const EdgeInsets.only(top: 40, bottom: 20),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[Colors.amber, Colors.blue],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
