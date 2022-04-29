import 'package:flutter/material.dart';
import 'package:logic_enhancer/classes/level_head2.dart';
import '../classes/LED2.dart';
import '../classes/bus.dart';
import '../classes/no_gate.dart';

int moves = 2;
LED LIGHT2 = LED(
  x: a2.activate,
  y: 1,
);
LevelHead2 v = LevelHead2(
  "1",
  level1(),LIGHT2,
  mov: moves,
);
int sat = 1;
no_gate b = no_gate(height: 100,width: 100,);
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
  ver_length2: 190,
  dx: 2.5,
);
void set() {
  moves = 2;
  v = LevelHead2(
    "1",
    level1(),LIGHT2,
    mov: moves,
  );
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
    ver_length2: 190,
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
  @override
  void initState() {
    set();
    super.initState();
  }

  void test() {
    setState(() {
      if (moves != 0) {
        moves -= 1;
        v = LevelHead2(
  "1",
  level1(),LIGHT2,
  mov: moves,
);
      }
      if (sat == 0) {
        sat = 1;
        c = b.activation(sat);
        a2 = Bus(
            activate: c,
            hor_length: 0,
            ver_length1: 0,
            ver_length2: 195,
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
            ver_length2: 195,
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
    return IgnorePointer(ignoring: (LIGHT2.x==1),child: FlatButton(
        onPressed: test,
        child: Image.asset(
          buttons[sat],
          width: 100,
          height: 100,
        )),);
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
            IgnorePointer(ignoring: LIGHT2.x==1,child: v,),
            LIGHT2,
            Spacer(),
            a2.show(),
            b,
            SizedBox(
              height: 150,
            ),
            a1.show(),
            button(),
          ],
        ));
  }
}
