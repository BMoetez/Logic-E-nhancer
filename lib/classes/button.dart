// import 'package:flutter/material.dart';
// import 'LED2.dart';

// int index = 0;

// class buton extends StatefulWidget {
//   final LED w;
//   const buton(this.w);
//   LED set2() {
//     return w;
//   }

//   @override
//   State<buton> createState() => _butonState();
// }

// // ignore: camel_case_types
// class _butonState extends State<buton> {
//   var buttons = [
//     "assets/images/button/button0.png",
//     "assets/images/button/button1.png"
//   ];
//   LED set2() {
//     return widget.w;
//   }

//   late LED a = set2();
//   void fun() {
//     setState(() {
//       if (index == 0) {
//         index = 1;
//         a = LED(index);
//       } else {
//         index = 0;
//         a = LED(index);
//       }
//     }
//     print(index)
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return FlatButton(onPressed: fun, child: Image.asset(buttons[index]));
//   }
// }
