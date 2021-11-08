// Tab Bar

import 'package:flutter/material.dart';
import 'package:async/async.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TabBar myTabBar = TabBar(
      indicator: BoxDecoration(
        color: Colors.amberAccent,
        border: Border(
          bottom: BorderSide(
            color: Colors.purple,
            width: 5,
          ),
        ),
      ),
      tabs: <Widget>[
        Tab(
          icon: Icon(Icons.comment),
          text: "Comments",
        ),
        Tab(
          icon: Icon(Icons.computer),
        ),
        Tab(text: "News"),
      ],
    );

    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.lightBlue,
            title: Text("Tab Bar"),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(myTabBar.preferredSize.height),
              child: Container(
                color: Colors.blue,
                child: myTabBar,
              ),
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              Center(
                child: Text("Tab 1"),
              ),
              Center(
                child: Text("Tab 2"),
              ),
              Center(
                child: Text("Tab 3"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
