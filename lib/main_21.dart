import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // ✅ MaterialApp harus jadi root widget
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Latihan Media Query",
      home: const MediaQueryExample(),
    );
  }
}

class MediaQueryExample extends StatelessWidget {
  const MediaQueryExample({super.key});

  @override
  Widget build(BuildContext context) {
    // ✅ Sekarang MediaQuery bisa dipanggil karena ada MaterialApp di atasnya
    final orientation = MediaQuery.of(context).orientation;

    return Scaffold(
      appBar: AppBar(title: const Text("Latihan Media Query")),
      body: (orientation == Orientation.portrait)
          ? Column(children: generateContainers())
          : Row(children: generateContainers()),
    );
  }

  List<Widget> generateContainers() {
    return <Widget>[
      Container(color: Colors.red, width: 100, height: 100),
      Container(color: Colors.green, width: 100, height: 100),
      Container(color: Colors.blue, width: 100, height: 100),
    ];
  }
}

//Kode Lama bukan GPT
//================================================================================================================
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Latihan Media Query")),
/*  body: Container(
        color: Colors.red,
        width: MediaQuery.of(context).size.width / 3,
        height: MediaQuery.of(context).size.height / 2,
      ), */
//================================================================================================================
//       body: (MediaQuery.of(context).orientation == Orientation.portrait)
//           ? Column(children: generateContainers())
//           : Row(children: generateContainers()),
//     );
//   }

//   List<Widget> generateContainers() {
//     return <Widget>[
//       Container(color: Colors.red, width: 100, height: 100),
//       Container(color: Colors.green, width: 100, height: 100),
//       Container(color: Colors.blue, width: 100, height: 100),
//     ];
//   }
// }
