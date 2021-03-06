// statefull

import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int number = 0;
  void tombolTambah() {
    setState(() {
      number = number + 1;
    });
  }

  void tombolKurang() {
    setState(() {
      number = number - 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Stateful Widget"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(number.toString(),
                  style: TextStyle(fontSize: 10 + number.toDouble())),
              RaisedButton(
                child: Text("Tambah Bilangan"),
                onPressed: tombolTambah,
              ),
              RaisedButton(
                child: Text("Kurangi Bilangan"),
                onPressed: tombolKurang,
              )
            ],
          ),
        ),
      ),
    );
  }
}
