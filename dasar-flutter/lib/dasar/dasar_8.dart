// alignment wiget

import 'package:flutter/material.dart';
import 'dart:math';

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
          title: Text("Alignment Widget"),
        ),
        body: Stack(
          children: <Widget>[
            // background
            Column(
              children: <Widget>[
                Flexible(
                  flex: 1,
                  child: Row(
                    children: <Widget>[
                      Flexible(
                        flex: 1,
                        child: Container(color: Colors.white),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(color: Colors.black12),
                      ),
                    ],
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Row(
                    children: <Widget>[
                      Flexible(
                        flex: 1,
                        child: Container(color: Colors.black12),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            // listview
            ListView(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(15),
                      child: Text(
                        "Ini adalah Judul yang berada dilapisan tengah diatas lapisan background yang berada dibawahnya.",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(15),
                      child: Text(
                        "Ini adalah Judul yang berada dilapisan tengah diatas lapisan background yang berada dibawahnya.",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(15),
                      child: Text(
                        "Ini adalah Judul yang berada dilapisan tengah diatas lapisan background yang berada dibawahnya.",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(15),
                      child: Text(
                        "Ini adalah Judul yang berada dilapisan tengah diatas lapisan background yang berada dibawahnya.",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(15),
                      child: Text(
                        "Ini adalah Judul yang berada dilapisan tengah diatas lapisan background yang berada dibawahnya.",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(15),
                      child: Text(
                        "Ini adalah Judul yang berada dilapisan tengah diatas lapisan background yang berada dibawahnya.",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(15),
                      child: Text(
                        "Ini adalah Judul yang berada dilapisan tengah diatas lapisan background yang berada dibawahnya.",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            // button
            Align(
              alignment: Alignment(0, 0.9),
              child: RaisedButton(
                child: Text(
                  "My Button",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.blueAccent,
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
