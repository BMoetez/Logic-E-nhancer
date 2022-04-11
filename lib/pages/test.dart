
// import 'package:flutter/material.dart';
// import 'package:logic_enhancer/pages/option_page.dart';
// import '../classes/LED2.dart';
// import '../classes/button.dart';

// int state = 0;
// LED LIGHT = LED(state);

// class test extends StatefulWidget {
//   const test({Key? key}) : super(key: key);

//   @override
//   State<test> createState() => _testState();
// }

// class _testState extends State<test> {
//   var buttons = [
//     "assets/images/button/button0.png",
//     "assets/images/button/button1.png"
//   ];
//   void test() {
//     setState(() {
//       if (state == 0) {
//         state = 1;
//         LIGHT = LED(state);
//       } else {
//         state = 0;
//         LIGHT = LED(state);
//       }
//       print(state);
//     });
//   }

//   Widget button() {
//     return FlatButton(onPressed: test, child: Image.asset(buttons[state]));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         decoration: const BoxDecoration(
//             image: DecorationImage(
//                 image: AssetImage("assets/images/back.jpg"),
//                 fit: BoxFit.cover)),
//         child: Row(
//           children: [
//             button(),
//             LIGHT,
//           ],
//         ));
//   }
// }
