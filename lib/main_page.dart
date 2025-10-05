import 'package:aplikasi_hello_world/main_16SecondPage.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Main Page")),
      body: Center(
        child: ElevatedButton(
          child: Text("Go to second page"),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return Main16secondpage();
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
