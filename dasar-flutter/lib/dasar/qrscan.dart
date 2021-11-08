import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:qrscan/qrscan.dart' as scanner;
import 'dart:async';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String text = 'Hasil QR Scan';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("QR Scan"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(text),
              SizedBox(
                height: 20,
              ),
              RaisedButton(
                  child: Text("scan"),
                  onPressed: () async {
                    text = await scanner.scan();
                    setState(() {});
                  }),
            ],
          ),
        ));
  }
}
