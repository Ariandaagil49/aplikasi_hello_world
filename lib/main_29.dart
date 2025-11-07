// import 'dart:ffi';

// import 'package:flutter/material.dart';
// import 'package:qr_flutter/qr_flutter.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("QR Code Generator")),
//         body: Center(
//           child: QrImage(
//             version: 6,
//             backgroundColor: Colors.grey,
//             foregroundColor: Colors.black,
//             errorCorrectionLevel: QrErrorCorrectLevel.M,
//             padding: EdgeInsets.all(30),
//             size: 300,
//             data: "www.linkedin.com/in/ariandaagil",
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("QR Code Generator")),
        body: Center(
          child: QrImageView(
            data: "www.linkedin.com/in/ariandaagil",
            version: QrVersions.auto,
            size: 300.0,
            backgroundColor: Colors.white,
            eyeStyle: const QrEyeStyle(
              eyeShape: QrEyeShape.square,
              color: Colors.black,
            ),
            dataModuleStyle: const QrDataModuleStyle(
              dataModuleShape: QrDataModuleShape.square,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
