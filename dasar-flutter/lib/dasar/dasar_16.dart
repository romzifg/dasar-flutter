// Media Query

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Media Query"),
      ),
      body: (MediaQuery.of(context).orientation == Orientation.portrait)
          ? Column(
              children: generateContainers,
            )
          : Row(
              children: generateContainers,
            ),
    );
  }

  List<Widget> get generateContainers {
    return <Widget>[
      Container(color: Colors.red, width: 100, height: 100),
      Container(color: Colors.green, width: 100, height: 100),
      Container(color: Colors.blue, width: 100, height: 100),
    ];
  }
}
