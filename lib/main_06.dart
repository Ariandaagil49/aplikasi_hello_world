import 'package:flutter/material.dart';

void main() {
  runApp(StatelessView());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int number = 0;
  int number2 = 10;
  int number3 = 20;

  void tekanTombol() {
    setState(() {
      number = number + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Stateful Widget Demo")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(number.toString(), style: TextStyle(fontSize: 30)),
              SizedBox(height: 20),
              Text(number2.toString(), style: TextStyle(fontSize: 30)),
              SizedBox(height: 20),
              Text(number3.toString(), style: TextStyle(fontSize: 30)),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: tekanTombol,
                child: Text("Tambah Bilangan"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class StatelessView extends StatelessWidget {
  const StatelessView({super.key});
  // void tekanTombol(int number) {
  //   number = number + 1;
  // }

  @override
  Widget build(BuildContext context) {
    final number = ValueNotifier(0);
    ValueNotifier<int> number2 = ValueNotifier(10);
    int number3 = 20;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Stateful Widget Demo")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ValueListenableBuilder(
                valueListenable: number,
                builder: (context, value, child) {
                  return Text(value.toString(), style: TextStyle(fontSize: 30));
                },
              ),
              SizedBox(height: 20),
              Text(number3.toString(), style: TextStyle(fontSize: 30)),
              SizedBox(height: 20),
              ValueListenableBuilder(
                valueListenable: number2,
                builder: (context, value, child) {
                  return Text(value.toString(), style: TextStyle(fontSize: 30));
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  number.value = number.value + 1;
                },
                child: Text("Tambah Bilangan"),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  number2.value = number2.value + 1;
                },
                child: Text("Tambah Bilangan 2"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
