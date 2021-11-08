// image widget

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Widget Image"),
        ),
        body: Center(
          child: Container(
            color: Colors.blue,
            width: 300,
            height: 300,
            padding: EdgeInsets.all(3),
            child: Image(
              image: AssetImage('assets/images/foto.jpg'),
              fit: BoxFit.contain,
              repeat: ImageRepeat.repeat,
            ),
          ),
        ),
      ),
    );
  }
}
