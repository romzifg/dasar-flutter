import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // method dalam stalessWidget
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home, properti yg pertama kali ditampilkan
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Aplikasi Hello World"),
        ),
        body: Center(
          child: Container(
            color: Colors.lightBlue,
            width: 150,
            height: 100,
            child: const Text(
              "Halo semua, apa kabar ? apakah baik-baik saja ? semoga baik",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
