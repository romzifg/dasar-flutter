// Text Field Widget

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Text Field"),
        ),
        body: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                  // icon: Icon(Icons.adb),
                  prefixIcon: Icon(Icons.person),
                  // prefixText: "Name: ",
                  // prefixStyle: TextStyle(
                  //   color: Colors.blue,
                  //   fontWeight: FontWeight.w300,
                  // ),
                  hintText: "Nama Lengkap",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w200,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                maxLength: 25,
                // obscureText: true (untuk password),
                onChanged: (value) {
                  setState(() {});
                },
                controller: controller,
              ),
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  hintText: "Password",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w200,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                maxLength: 25,
                obscureText: true,
                onChanged: (value) {
                  setState(() {});
                },
                controller: controller,
              ),
              Text(controller.text),
            ],
          ),
        ),
      ),
    );
  }
}
