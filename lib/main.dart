import 'package:flutter/material.dart';
import 'dart:math';

Random random = new Random();

void main() {
  runApp(DiceePage());
}

// class MyApp extends StatelessWidget {
//   MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.red,
//         appBar: AppBar(
//           backgroundColor: Colors.red,
//           title: Text('Dicee'),
//         ),
//         body: Center(
//           child: Row(
//             children: <Widget>[
//               Expanded(
//                 child: ElevatedButton(
//                   onPressed: () {
//                     int randomInt1 = random.nextInt(5);
//                   },
//                   child: Image.asset(
//                     'images/dice${randomInt1}.png',
//                   ),
//                 ),
//               ),
//               Expanded(
//                 child: ElevatedButton(
//                   onPressed: () {
//                     int randomInt2 = random.nextInt(5);
//                   },
//                   child: Image.asset(
//                     'images/dice${randomInt2}.png',
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

class DiceePage extends StatefulWidget {
  const DiceePage({Key? key}) : super(key: key);

  @override
  _DiceePageState createState() => _DiceePageState();
}

class _DiceePageState extends State<DiceePage> {
  int randomInt1 = 1;
  int randomInt2 = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('Dicee'),
        ),
        body: Center(
          child: Row(
            children: <Widget>[
              Expanded(
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.red)),
                  onPressed: () {
                    setState(() {
                      randomInt1 = random.nextInt(6) + 1;
                    });
                  },
                  child: Image.asset(
                    'images/dice$randomInt1.png',
                  ),
                ),
              ),
              Expanded(
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.red)),
                  onPressed: () {
                    setState(() {
                      randomInt2 = random.nextInt(6) + 1;
                    });
                  },
                  child: Image.asset(
                    'images/dice$randomInt2.png',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
