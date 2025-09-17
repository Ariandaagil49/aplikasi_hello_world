import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String message = "Belum ditekan"; // tambahkan variabel message

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Anonymous Method")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(message, style: TextStyle(fontSize: 20)),
              SizedBox(height: 20),
              ElevatedButton(
                child: Text("Tekan saya"),
                onPressed: () {
                  setState(() {
                    message = "Tombol sudah ditekan";
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
