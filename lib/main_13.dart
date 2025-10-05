import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Latihan Image")),
        body: Center(
          child: Container(
            color: Colors.black,
            width: 300,
            height: 300,
            padding: EdgeInsets.all(3),
            child: Image(
              image: AssetImage("assets/gopal.jpg"),
              fit: BoxFit.contain /*ada contain, fill, cover dan none*/,
              repeat: ImageRepeat.repeat,
            ),
          ),
        ),
      ),
    );
  }
}
