import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Flutter Typography")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text("Contoh 01 (Tanpa Apapun)", style: TextStyle(fontSize: 20)),
              Text(
                "Contoh 02 (small caps)",
                style: TextStyle(
                  fontSize: 20,
                  fontFeatures: [FontFeature.enable('smcp')],
                ),
              ),
              Text(
                "Contoh 3 1/2 (small caps & Frac)",
                style: TextStyle(
                  fontSize: 20,
                  fontFeatures: [
                    FontFeature.enable('smcp'),
                    FontFeature.enable('frac'),
                  ],
                ),
              ),
              Text(
                "Contoh 3 1/2 (small caps & Frac)",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Milonga",
                  fontFeatures: [
                    FontFeature.enable('smcp'),
                    FontFeature.enable('frac'),
                  ],
                ),
              ),
              Text(
                "Contoh Cardo (Tanpa Apapun)",
                style: TextStyle(fontSize: 20, fontFamily: "Cardo"),
              ),
              Text(
                "Contoh Cardo 19 (old style)",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Cardo",
                  fontFeatures: [FontFeature.oldstyleFigures()],
                ),
              ),
              Text(
                "Gabriola (Default)",
                style: TextStyle(fontSize: 20, fontFamily: "Gabriola"),
              ),
              Text(
                "Gabriola (Style set nomor 5)",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Gabriola",
                  fontFeatures: [FontFeature.stylisticSet(5)],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
