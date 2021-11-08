import 'package:flutter/material.dart';
import 'package:fundamental/container/main_page.dart';

void main() => runApp(LoginPage());

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          child: Text("Login"),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return MainPage();
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
