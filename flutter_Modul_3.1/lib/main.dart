import 'package:flutter/material.dart';
import 'package:flutter_application_3/detail_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contacts',
      theme: ThemeData(),
      home: DetailScreen(),
    );
  }
}

// //percobaan 1,2,
// class DetailScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: <Widget>[
//             Container(
//               margin: const EdgeInsets.only(top: 16.0),
//               child: const Text(
//                 "Surabaya Submarine Monument",
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                   fontSize: 30.0,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//             Container(
//               margin: const EdgeInsets.symmetric(vertical: 16.0),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: <Widget>[
//                   Column(
//                     children: const <Widget> [
//                       Icon(Icons.calendar_today),
//                       Text("Open everyday")
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//             Container(
//               padding: const EdgeInsets.all(16.0),
//               child: const Text(
//                 "Musiueum inside a docummissioned Russioan war submarine with tours & an adjacent park with cafes. Clean and well maintained. Car park cony 10K, enterance fee 15k/person. You cam see KRI Pasopati there, it is a russian whiskey class. You can also watch the video about the Indonesian Navy at the buillding beside the submarine",
//                 textAlign: TextAlign.center,
//                 style: TextStyle(fontSize: 16.0),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }




