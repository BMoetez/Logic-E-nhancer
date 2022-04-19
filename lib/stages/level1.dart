import 'package:flutter/material.dart';
import 'package:logic_enhancer/classes/level_head2.dart';
import '../classes/LED2.dart';
import '../classes/bus.dart';
import '../classes/no_gate.dart';
import 'package:lottie/lottie.dart';
LevelHead2 v = LevelHead2("1", level1());
int sat = 1;

no_gate b = no_gate();
int c = b.activation(sat);
Bus a1 = Bus(
  activate: sat,
  hor_length: 0,
  ver_length1: 0,
  ver_length2: 150,
);
Bus a2 = Bus(
  activate: c,
  hor_length: 0,
  ver_length1: 0,
  ver_length2: 230,
  dx: 2.5,
);
LED LIGHT2 = LED(
  x: a2.activate,
  y: 1,
);
void set() {
  sat = 1;

  a1 = Bus(
    activate: sat,
    hor_length: 0,
    ver_length1: 0,
    ver_length2: 150,
  );
  c = b.activation(sat);
  a2 = Bus(
    activate: c,
    hor_length: 0,
    ver_length1: 0,
    ver_length2: 230,
    dx: 2.5,
  );
  LIGHT2 = LED(
    x: a2.activate,
    y: 1,
  );
}

class level1 extends StatefulWidget {
  const level1({Key? key}) : super(key: key);

  @override
  State<level1> createState() => _level1State();
}

class _level1State extends State<level1> with SingleTickerProviderStateMixin {
  var buttons = [
    "assets/images/button/button0.png",
    "assets/images/button/button1.png"
  ];
  late final AnimationController _controller;
  @override
  void initState() {
    set();
    super.initState();
  }

 

  void test() {
    setState(() {
      if (sat == 0) {
        sat = 1;
        c = b.activation(sat);
        a2 = Bus(
            activate: c,
            hor_length: 0,
            ver_length1: 0,
            ver_length2: 230,
            dx: 2.5);
        a1 =
            Bus(activate: sat, hor_length: 0, ver_length1: 0, ver_length2: 150);
      } else {
        sat = 0;
        c = b.activation(sat);
        a2 = Bus(
            activate: c,
            hor_length: 0,
            ver_length1: 0,
            ver_length2: 230,
            dx: 2.5);
        a1 =
            Bus(activate: sat, hor_length: 0, ver_length1: 0, ver_length2: 150);
      }
      print(c);
      if (a2.activate == 0) {
        LIGHT2 = LED(
          x: a2.activate,
          y: 1,
        );
      } else {
        LIGHT2 = LED(
          x: a2.activate,
          y: 1,
        );
      }
    });
  }

  Widget button() {
    return FlatButton(
        onPressed: test,
        child: Image.asset(
            buttons[sat],
            width: 100,
            height: 100,
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/background.jpg"),
                fit: BoxFit.cover)),
        child: Column(
          children: [
            v,
            LIGHT2,
            Spacer(),
            a2.show(),
            b.show(),
            SizedBox(
              height: 100,
            ),
            a1.show(),
            button(),
          ],
        ));
  }
}
