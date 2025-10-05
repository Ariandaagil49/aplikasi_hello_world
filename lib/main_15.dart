// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatefulWidget {
//   const MyApp({super.key});

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   Color color1 = Colors.red;
//   Color color2 = Colors.amber;
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("Latihan Dragable")),
//         body: Column(
//           children: <Widget>[
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: <Widget>[
//                 Draggable<Color>(
//                   feedback: SizedBox(),
//                   data: color1,
//                   child: SizedBox(
//                     width: 50,
//                     height: 50,
//                     child: Material(
//                       color: color1,
//                       shape: StadiumBorder(),
//                       elevation: 3,
//                     ),
//                   ),
//                   childWhenDragging: SizedBox(
//                     width: 50,
//                     height: 50,
//                     child: Material(
//                       color: Colors.black26,
//                       shape: StadiumBorder(),
//                       elevation: 3,
//                     ),
//                   ),
//                   feedback: SizedBox(
//                     width: 50,
//                     height: 50,
//                     child: Material(
//                       color: color1.withOpacity(0.5),
//                       shape: StadiumBorder()
//                       elevation: 3,
//                     ),
//                   )
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
