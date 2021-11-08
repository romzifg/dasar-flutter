import 'package:flutter/material.dart';

void main() => runApp(SecondPage());

class SecondPage extends StatelessWidget {
  const SecondPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("Back to main page"),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
