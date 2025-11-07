import 'package:flutter/material.dart';

class Mainpage extends StatelessWidget {
  const Mainpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Custom Card Example",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xFF8C062F),
      ),
      body: Container(
        // 🔹 Background gradient (benar)
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFFE5788), Color(0xFFF56D5D)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            height: MediaQuery.of(context).size.height * 0.7,
            child: Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              // ❌ Sebelumnya kamu pakai Stack → menyebabkan gambar double.
              // ✅ Sekarang pakai Column biar layout vertikal dan lebih stabil.
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // 🔹 Bagian Gambar (1 kali aja)
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8),
                    ),
                    child: Image.network(
                      "https://i.pinimg.com/1200x/2a/ac/4c/2aac4c0eb373613198b9294d0ba040e7.jpg",
                      height: MediaQuery.of(context).size.height * 0.35,
                      fit: BoxFit.cover,
                    ),
                  ),
                  // 🔹 Bagian Teks dan Icon
                  Expanded(
                    child: Container(
                      color: Colors.white, // biar teks tidak menimpa gambar
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // 🔹 Judul (hilang di kode lama)
                          const Text(
                            "Beautiful Sunset at Paddy Field",
                            style: TextStyle(
                              color: Color(0xFFF56D5D),
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 10),

                          // 🔹 Info tanggal
                          const Text(
                            "Posted on October 11 2025",
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                          const SizedBox(height: 20),

                          // 🔹 Baris Like dan Comment
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.thumb_up,
                                size: 18,
                                color: Colors.grey,
                              ),
                              SizedBox(width: 5),
                              Text("99", style: TextStyle(color: Colors.grey)),
                              SizedBox(width: 20),
                              Icon(Icons.comment, size: 18, color: Colors.grey),
                              SizedBox(width: 5),
                              Text("888", style: TextStyle(color: Colors.grey)),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// class Mainpage extends StatelessWidget {
//   const Mainpage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           "Custom Card Example",
//           style: TextStyle(color: Colors.white),
//         ),
//         backgroundColor: Color(0xFF8C062F),
//       ),
//       body: Stack(
//         children: <Widget>[
//           Container(
//             decoration: BoxDecoration(
//               gradient: LinearGradient(
//                 colors: [Color(0xFFFE5788), Color(0xFFF56D5D)],
//                 begin: Alignment.topCenter,
//                 end: Alignment.bottomCenter,
//               ),
//             ),
//           ),
//           Center(
//             child: SizedBox(
//               width: MediaQuery.of(context).size.width * 0.8,
//               height: MediaQuery.of(context).size.height * 0.7,
//               child: Card(
//                 elevation: 10,
//                 child: Stack(
//                   children: <Widget>[
//                     Opacity(
//                       opacity: 0.7,
//                       child: Container(
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(4),
//                           image: DecorationImage(
//                             image: NetworkImage(
//                               "https://i.pinimg.com/1200x/2a/ac/4c/2aac4c0eb373613198b9294d0ba040e7.jpg",
//                             ),
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                       ),
//                     ),
//                     Container(
//                       height: MediaQuery.of(context).size.height * 0.35,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.only(
//                           topLeft: Radius.circular(4),
//                           topRight: Radius.circular(4),
//                         ),
//                         image: DecorationImage(
//                           image: NetworkImage(
//                             "https://i.pinimg.com/1200x/2a/ac/4c/2aac4c0eb373613198b9294d0ba040e7.jpg",
//                           ),
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                     ),
//                     Container(
//                       margin: EdgeInsets.fromLTRB(
//                         20,
//                         50 + MediaQuery.of(context).size.height * 0.35,
//                         20,
//                         20,
//                       ),
//                       child: Center(
//                         child: Column(
//                           children: <Widget>[
//                             Text(
//                               "Posted on",
//                               style: TextStyle(
//                                 color: Colors.grey,
//                                 fontSize: 12,
//                               ),
//                             ),
//                             Container(
//                               margin: EdgeInsets.fromLTRB(0, 20, 0, 15),
//                               child: Row(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 children: <Widget>[
//                                   Text(
//                                     "October 11 2025",
//                                     style: TextStyle(
//                                       color: Color(0xFFF56D5D),
//                                       fontSize: 12,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                             Row(
//                               children: <Widget>[
//                                 Spacer(flex: 10),
//                                 Icon(
//                                   Icons.thumb_up,
//                                   size: 18,
//                                   color: Colors.grey,
//                                 ),
//                                 Spacer(flex: 1),
//                                 Text(
//                                   " 99",
//                                   style: TextStyle(color: Colors.grey),
//                                 ),
//                                 Spacer(flex: 5),
//                                 Icon(
//                                   Icons.comment,
//                                   size: 18,
//                                   color: Colors.grey,
//                                 ),
//                                 Spacer(flex: 1),
//                                 Text(
//                                   "888",
//                                   style: TextStyle(color: Colors.grey),
//                                 ),
//                                 Spacer(flex: 10),
//                               ],
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
