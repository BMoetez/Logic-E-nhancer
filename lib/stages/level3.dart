import 'package:flutter/material.dart';
import 'package:logic_enhancer/classes/level_head2.dart';
import '../classes/LED2.dart';
import '../classes/bus.dart';
import '../classes/or_gate.dart';
import '../classes/no_gate.dart';
LevelHead2 v = LevelHead2("3",level3());
or_gate OR = or_gate(height: 100, width: 100);
no_gate no = no_gate(height: 70, width: 70);
int sat1 = 0;
int sat2 = 0;
Bus a1 = Bus(
  activate: sat1,
  hor_length: 150,
  ver_length1: 60,
  ver_length2: 60,
  dy: -60,
  dx: -2.5,
);
Bus a2 = Bus(
  activate: sat2,
  hor_length: -150,
  ver_length1: -60,
  ver_length2: -60,
  dy: -60,
);
Bus a3 = Bus(
  activate: b,
  hor_length: 0,
  ver_length1: 0,
  ver_length2: 100,
);
Bus a4 = Bus(
  activate: c,
  hor_length: 0,
  ver_length1: 0,
  ver_length2: 60,
  dx: 2.5,
);
int b = OR.activation(a1.activate, a2.activate);
LED LIGHT2 = LED(x: a4.activate,y: 3,);
int c = no.activation(a3.activate);
void set (){
   sat1 = 0;
sat2 = 0;
 a1 = Bus(
  activate: sat1,
  hor_length: 150,
  ver_length1: 60,
  ver_length2: 60,
  dy: -60,
  dx: -2.5,
);
 a2 = Bus(
  activate: sat2,
  hor_length: -150,
  ver_length1: -60,
  ver_length2: -60,
  dy: -60,
); b = OR.activation(a1.activate, a2.activate);
 a3 = Bus(
  activate: b,
  hor_length: 0,
  ver_length1: 0,
  ver_length2: 100,
);c = no.activation(a3.activate);
a4 = Bus(
  activate: c,
  hor_length: 0,
  ver_length1: 0,
  ver_length2: 60,
  dx: 2.5,
);
LIGHT2 = LED(x: a4.activate,y: 3,);
}
class level3 extends StatefulWidget {
  const level3({Key? key}) : super(key: key);

  @override
  State<level3> createState() => _level3State();
}

class _level3State extends State<level3> {
  var buttons = [
    "assets/images/button/button0.png",
    "assets/images/button/button1.png"
  ];
  void initState() {
    set();
    super.initState();
  }
  void test1() {
    setState(() {
      if (sat1 == 1) {
        sat1 = 0;
        a1 = Bus(
          activate: sat1,
          hor_length: 150,
          ver_length1: 60,
          ver_length2: 60,
          dy: -60,
          dx: -2.5,
        );
        b = OR.activation(a1.activate, sat2);
        a3 = Bus(
          activate: b,
          hor_length: 0,
          ver_length1: 0,
          ver_length2: 100,
        );
        c = no.activation(a3.activate);
        a4 = Bus(
          activate: c,
          hor_length: 0,
          ver_length1: 0,
          ver_length2: 60,
          dx: 2.5,
        );
      } else {
        sat1 = 1;
        a1 = Bus(
          activate: sat1,
          hor_length: 150,
          ver_length1: 60,
          ver_length2: 60,
          dy: -60,
          dx: -2.5,
        );
        b = OR.activation(a1.activate, sat2);
        a3 = Bus(
          activate: b,
          hor_length: 0,
          ver_length1: 0,
          ver_length2: 100,
        );
        c = no.activation(a3.activate);
        a4 = Bus(
          activate: c,
          hor_length: 0,
          ver_length1: 0,
          ver_length2: 60,
          dx: 2.5,
        );
      }
      if (a4.activate == 1) {
        LIGHT2 = LED(x: a4.activate,y: 3,);
      } else {
        LIGHT2 = LED(x: a4.activate,y: 3,);
      }
      print("b1:{$c}");
    });
  }

  void test2() {
    setState(() {
      if (sat2 == 1) {
        sat2 = 0;
        a2 = Bus(
          activate: sat2,
          hor_length: -150,
          ver_length1: -60,
          ver_length2: -60,
          dy: -60,
        );
        b = OR.activation(sat1, a2.activate);
        a3 = Bus(
          activate: b,
          hor_length: 0,
          ver_length1: 0,
          ver_length2: 100,
        );
        c = no.activation(a3.activate);
        a4 = Bus(
          activate: c,
          hor_length: 0,
          ver_length1: 0,
          ver_length2: 60,
          dx: 2.5,
        );
      } else {
        sat2 = 1;
        a2 = Bus(
          activate: sat2,
          hor_length: -150,
          ver_length1: -60,
          ver_length2: -60,
          dy: -60,
        );
        b = OR.activation(sat1, a2.activate);
        a3 = Bus(
          activate: b,
          hor_length: 0,
          ver_length1: 0,
          ver_length2: 100,
        );
        c = no.activation(a3.activate);
        a4 = Bus(
          activate: c,
          hor_length: 0,
          ver_length1: 0,
          ver_length2: 60,
          dx: 2.5,
        );
      }
      if (a4.activate == 1) {
        LIGHT2 = LED(x: a4.activate,y: 3,);
      } else {
        LIGHT2 = LED(x: a4.activate,y: 3,);
      }
      print("b1:{$c}");
    });
  }

  Widget button1() {
    return FlatButton(
        onPressed: test1,
        child: Image.asset(
          buttons[sat1],
          width: 100,
          height: 100,
        ));
  }

  Widget button2() {
    return FlatButton(
        onPressed: test2,
        child: Image.asset(
          buttons[sat2],
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            v,
            LIGHT2,
            SizedBox(
              height: 50,
            ),
            a4.show(),
            no.show(),
            SizedBox(
              height: 100,
            ),
            a3.show(),
            OR.show(),
            SizedBox(
              height: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [a1.show(), button1()],
                ),
                SizedBox(
                  width: 200,
                ),
                Column(
                  children: [a2.show(), button2()],
                )
              ],
            )
          ],
        ));
  }
}
