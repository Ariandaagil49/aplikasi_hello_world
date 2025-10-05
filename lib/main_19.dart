import 'package:flutter/material.dart';

TextEditingController controller = TextEditingController();

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Latihan Text Field")),
        body: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              TextField(
                obscureText: true,
                maxLength: 10,
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
