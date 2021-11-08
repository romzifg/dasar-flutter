import 'package:flutter/material.dart';
import 'package:fundamental/container/second_page.dart';

void main() => runApp(MainPage());

class MainPage extends StatelessWidget {
  const MainPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main Page"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("Go to second page"),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return SecondPage();
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
