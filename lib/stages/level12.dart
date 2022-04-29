import 'package:flutter/material.dart';
import '../classes/LED2.dart';
import '../classes/bus.dart';
import '../classes/or_gate.dart';
import '../classes/level_head2.dart';
import '../classes/no_gate.dart';
import '../classes/and_gate.dart';
import '../classes/Nand_gate.dart';

int moves = 3;
LevelHead2 v = LevelHead2(
  "12",
  level12(),light,
  mov: moves,
);
or_gate or1 = or_gate(height: 50, width: 50);
or_gate or2 = or_gate(height: 50, width: 50);
and_gate and2 = and_gate(height: 50, width: 50);
and_gate and1 = and_gate(height: 50, width: 50);
no_gate no1 = no_gate(height: 50, width: 50);
no_gate no2 = no_gate(height: 50, width: 50);
nand_gate nand = nand_gate(height: 50, width: 50, rotation: 3);
int sat1 = 0;
int sat2 = 0;
int sat3 = 1;
int sat4 = 1;
int sat5 = 1;
int sat6 = 0;
int or1_output = or1.activation(a6.activate, a7.activate);
int or2_output = or2.activation(a11.activate, a12.activate);
int and2_output = and2.activation(a9.activate, a10.activate);
int and1_output = and1.activation(a3.activate, a4.activate);
int no1_output = no1.activation(a5.activate);
int no2_output = no2.activation(a8.activate);
int nand_output = nand.activation(a1.activate, a2.activate);
Bus a1 = Bus(
  activate: sat1,
  hor_length: 50,
  ver_length1: 20,
  ver_length2: 30,
  dy: -20,
);
Bus a2 = Bus(
  activate: sat2,
  hor_length: -50,
  ver_length1: -30,
  ver_length2: -20,
  dy: -20,
);
Bus a3 = Bus(
  activate: sat3,
  hor_length: 50,
  ver_length1: 70,
  ver_length2: 50,
  dy: -70,
);
Bus a4 = Bus(
  activate: sat4,
  hor_length: -50,
  ver_length1: -50,
  ver_length2: -70,
  dx: 2.5,
  dy: -70,
);
Bus a5 = Bus(
  activate: sat5,
  hor_length: 0,
  ver_length1: 90,
  ver_length2: 0,
  dy: -90,
);
Bus a6 = Bus(
  activate: no1_output,
  hor_length: 60,
);
Bus a7 = Bus(
  activate: sat6,
  hor_length: -65,
  ver_length1: -50,
  ver_length2: -190,
  dx: 2.5,
  dy: -190,
);
Bus a8 = Bus(
  activate: nand_output,
  hor_length: 0,
  ver_length1: 50,
  ver_length2: 0,
  dy: -10,
);
Bus a9 = Bus(
  activate: no2_output,
  hor_length: 140,
  ver_length1: 30,
  ver_length2: 25,
  dy: 10,
);
Bus a10 = Bus(
  activate: and1_output,
  hor_length: -150,
  ver_length1: -55,
  ver_length2: -50,
  dy: 40,
);
Bus a11 = Bus(
  activate: and2_output,
  hor_length: 155,
  ver_length1: 20,
  ver_length2: 40,
  dy: -5,
  dx: -2.5,
);
Bus a12 = Bus(
  activate: or1_output,
  hor_length: -300,
  ver_length1: -40,
  ver_length2: -50,
  dy: -10,
);
Bus a13 = Bus(
  activate: or2_output,
  hor_length: 0,
  ver_length1: 40,
  ver_length2: 0,
  dx: -2.5,
  dy: -10,
);
LED light = LED(
  x: a13.activate,
  y: 12,
);
void set() {
  moves = 3;
  v = LevelHead2("12", level12(),light,mov: moves,);
  sat1 = 0;
  sat2 = 0;
  sat3 = 0;
  sat4 = 0;
  sat5 = 1;
  sat6 = 0;
  a1 = Bus(
    activate: sat1,
    hor_length: 50,
    ver_length1: 20,
    ver_length2: 30,
    dy: -20,
  );
  a2 = Bus(
    activate: sat2,
    hor_length: -50,
    ver_length1: -30,
    ver_length2: -20,
    dy: -20,
  );
  a3 = Bus(
    activate: sat3,
    hor_length: 50,
    ver_length1: 70,
    ver_length2: 50,
    dy: -70,
  );
  a4 = Bus(
    activate: sat4,
    hor_length: -50,
    ver_length1: -50,
    ver_length2: -70,
    dx: 2.5,
    dy: -70,
  );
  a5 = Bus(
    activate: sat5,
    hor_length: 0,
    ver_length1: 90,
    ver_length2: 0,
    dy: -90,
  );
  no1_output = no1.activation(a5.activate);
  a6 = Bus(
    activate: no1_output,
    hor_length: 60,
  );
  a7 = Bus(
    activate: sat6,
    hor_length: -65,
    ver_length1: -50,
    ver_length2: -190,
    dx: 2.5,
    dy: -190,
  );
  nand_output = nand.activation(a1.activate, a2.activate);
  a8 = Bus(
    activate: nand_output,
    hor_length: 0,
    ver_length1: 50,
    ver_length2: 0,
    dy: -10,
  );
  no2_output = no2.activation(a8.activate);
  a9 = Bus(
    activate: no2_output,
    hor_length: 140,
    ver_length1: 30,
    ver_length2: 25,
    dy: 10,
  );
  and1_output = and1.activation(a3.activate, a4.activate);
  a10 = Bus(
    activate: and1_output,
    hor_length: -150,
    ver_length1: -55,
    ver_length2: -50,
    dy: 40,
  );
  and2_output = and2.activation(a9.activate, a10.activate);
  a11 = Bus(
    activate: and2_output,
    hor_length: 155,
    ver_length1: 20,
    ver_length2: 40,
    dy: -5,
    dx: -2.5,
  );
  or1_output = or1.activation(a6.activate, a7.activate);
  a12 = Bus(
    activate: or1_output,
    hor_length: -300,
    ver_length1: -40,
    ver_length2: -50,
    dy: -10,
  );
  or2_output = or2.activation(a11.activate, a12.activate);
  a13 = Bus(
    activate: or2_output,
    hor_length: 0,
    ver_length1: 40,
    ver_length2: 0,
    dx: -2.5,
    dy: -10,
  );
  light = LED(
    x: a13.activate,
    y: 12,
  );
}

class level12 extends StatefulWidget {
  const level12({Key? key}) : super(key: key);

  @override
  State<level12> createState() => _level12State();
}

class _level12State extends State<level12> {
  var buttons = [
    "assets/images/button/button0.png",
    "assets/images/button/button1.png"
  ];
  @override
  void initState() {
    set();
    super.initState();
  }

  void test1() {
    setState(() {

      if (sat1 == 0) {
        sat1 = 1;
        a1 = Bus(
          activate: sat1,
          hor_length: 50,
          ver_length1: 20,
          ver_length2: 30,
          dy: -20,
        );
        nand_output = nand.activation(a1.activate, a2.activate);
        a8 = Bus(
          activate: nand_output,
          hor_length: 0,
          ver_length1: 50,
          ver_length2: 0,
          dy: -10,
        );
        no2_output = no2.activation(a8.activate);
        a9 = Bus(
          activate: no2_output,
          hor_length: 140,
          ver_length1: 30,
          ver_length2: 25,
          dy: 10,
        );
        and2_output = and2.activation(a9.activate, a10.activate);
        a11 = Bus(
          activate: and2_output,
          hor_length: 155,
          ver_length1: 20,
          ver_length2: 40,
          dy: -5,
          dx: -2.5,
        );
        or2_output = or2.activation(a11.activate, a12.activate);
        a13 = Bus(
          activate: or2_output,
          hor_length: 0,
          ver_length1: 40,
          ver_length2: 0,
          dx: -2.5,
          dy: -10,
        );
      } else {
        sat1 = 0;
        a1 = Bus(
          activate: sat1,
          hor_length: 50,
          ver_length1: 20,
          ver_length2: 30,
          dy: -20,
        );
        nand_output = nand.activation(a1.activate, a2.activate);
        a8 = Bus(
          activate: nand_output,
          hor_length: 0,
          ver_length1: 50,
          ver_length2: 0,
          dy: -10,
        );
        no2_output = no2.activation(a8.activate);
        a9 = Bus(
          activate: no2_output,
          hor_length: 140,
          ver_length1: 30,
          ver_length2: 25,
          dy: 10,
        );
        and2_output = and2.activation(a9.activate, a10.activate);
        a11 = Bus(
          activate: and2_output,
          hor_length: 155,
          ver_length1: 20,
          ver_length2: 40,
          dy: -5,
          dx: -2.5,
        );
        or2_output = or2.activation(a11.activate, a12.activate);
        a13 = Bus(
          activate: or2_output,
          hor_length: 0,
          ver_length1: 40,
          ver_length2: 0,
          dx: -2.5,
          dy: -10,
        );
      }
      if (a13.activate == 1) {
        light = LED(
          x: a13.activate,
          y: 12,
        );
      } else {
        light = LED(
          x: a13.activate,
          y: 12,
        );
      }
      if(moves!=0){
        moves-=1;
        v = LevelHead2("12", level12(),light,mov: moves,);
      }
    });
  }

  void test2() {
    setState(() {

      if (sat2 == 1) {
        sat2 = 0;
        a2 = Bus(
          activate: sat2,
          hor_length: -50,
          ver_length1: -30,
          ver_length2: -20,
          dy: -20,
        );
        nand_output = nand.activation(a1.activate, a2.activate);
        a8 = Bus(
          activate: nand_output,
          hor_length: 0,
          ver_length1: 50,
          ver_length2: 0,
          dy: -10,
        );
        no2_output = no2.activation(a8.activate);
        a9 = Bus(
          activate: no2_output,
          hor_length: 140,
          ver_length1: 30,
          ver_length2: 25,
          dy: 10,
        );
        and2_output = and2.activation(a9.activate, a10.activate);
        a11 = Bus(
          activate: and2_output,
          hor_length: 155,
          ver_length1: 20,
          ver_length2: 40,
          dy: -5,
          dx: -2.5,
        );
        or2_output = or2.activation(a11.activate, a12.activate);
        a13 = Bus(
          activate: or2_output,
          hor_length: 0,
          ver_length1: 40,
          ver_length2: 0,
          dx: -2.5,
          dy: -10,
        );
      } else {
        sat2 = 1;
        a2 = Bus(
          activate: sat2,
          hor_length: -50,
          ver_length1: -30,
          ver_length2: -20,
          dy: -20,
        );
        nand_output = nand.activation(a1.activate, a2.activate);
        a8 = Bus(
          activate: nand_output,
          hor_length: 0,
          ver_length1: 50,
          ver_length2: 0,
          dy: -10,
        );
        no2_output = no2.activation(a8.activate);
        a9 = Bus(
          activate: no2_output,
          hor_length: 140,
          ver_length1: 30,
          ver_length2: 25,
          dy: 10,
        );
        and2_output = and2.activation(a9.activate, a10.activate);
        a11 = Bus(
          activate: and2_output,
          hor_length: 155,
          ver_length1: 20,
          ver_length2: 40,
          dy: -5,
          dx: -2.5,
        );
        or2_output = or2.activation(a11.activate, a12.activate);
        a13 = Bus(
          activate: or2_output,
          hor_length: 0,
          ver_length1: 40,
          ver_length2: 0,
          dx: -2.5,
          dy: -10,
        );
      }
      if (a13.activate == 1) {
        light = LED(
          x: a13.activate,
          y: 12,
        );
      } else {
        light = LED(
          x: a13.activate,
          y: 12,
        );
      }
      if(moves!=0){
        moves-=1;
        v = LevelHead2("12", level12(),light,mov: moves,);
      }
    });
  }

  void test3() {
    setState(() {

      if (sat3 == 1) {
        sat3 = 0;
        a3 = Bus(
          activate: sat3,
          hor_length: 50,
          ver_length1: 70,
          ver_length2: 50,
          dy: -70,
        );
        and1_output = and1.activation(a3.activate, a4.activate);
        a10 = Bus(
          activate: and1_output,
          hor_length: -150,
          ver_length1: -55,
          ver_length2: -50,
          dy: 40,
        );
        and2_output = and2.activation(a9.activate, a10.activate);
        a11 = Bus(
          activate: and2_output,
          hor_length: 155,
          ver_length1: 20,
          ver_length2: 40,
          dy: -5,
          dx: -2.5,
        );
        or2_output = or2.activation(a11.activate, a12.activate);
        a13 = Bus(
          activate: or2_output,
          hor_length: 0,
          ver_length1: 40,
          ver_length2: 0,
          dx: -2.5,
          dy: -10,
        );
      } else {
        sat3 = 1;
        a3 = Bus(
          activate: sat3,
          hor_length: 50,
          ver_length1: 70,
          ver_length2: 50,
          dy: -70,
        );
        and1_output = and1.activation(a3.activate, a4.activate);
        a10 = Bus(
          activate: and1_output,
          hor_length: -150,
          ver_length1: -55,
          ver_length2: -50,
          dy: 40,
        );
        and2_output = and2.activation(a9.activate, a10.activate);
        a11 = Bus(
          activate: and2_output,
          hor_length: 155,
          ver_length1: 20,
          ver_length2: 40,
          dy: -5,
          dx: -2.5,
        );
        or2_output = or2.activation(a11.activate, a12.activate);
        a13 = Bus(
          activate: or2_output,
          hor_length: 0,
          ver_length1: 40,
          ver_length2: 0,
          dx: -2.5,
          dy: -10,
        );
      }
      if (a13.activate == 1) {
        light = LED(
          x: a13.activate,
          y: 12,
        );
      } else {
        light = LED(
          x: a13.activate,
          y: 12,
        );
      }
      if(moves!=0){
        moves-=1;
        v = LevelHead2("12", level12(),light,mov: moves,);
      }
    });
  }

  void test4() {
    setState(() {

      if (sat4 == 1) {
        sat4 = 0;
        a4 = Bus(
          activate: sat4,
          hor_length: -50,
          ver_length1: -50,
          ver_length2: -70,
          dx: 2.5,
          dy: -70,
        );
        and1_output = and1.activation(a3.activate, a4.activate);
        a10 = Bus(
          activate: and1_output,
          hor_length: -150,
          ver_length1: -55,
          ver_length2: -50,
          dy: 40,
        );
        and2_output = and2.activation(a9.activate, a10.activate);
        a11 = Bus(
          activate: and2_output,
          hor_length: 155,
          ver_length1: 20,
          ver_length2: 40,
          dy: -5,
          dx: -2.5,
        );
        or2_output = or2.activation(a11.activate, a12.activate);
        a13 = Bus(
          activate: or2_output,
          hor_length: 0,
          ver_length1: 40,
          ver_length2: 0,
          dx: -2.5,
          dy: -10,
        );
      } else {
        sat4 = 1;
        a4 = Bus(
          activate: sat4,
          hor_length: -50,
          ver_length1: -50,
          ver_length2: -70,
          dx: 2.5,
          dy: -70,
        );
        and1_output = and1.activation(a3.activate, a4.activate);
        a10 = Bus(
          activate: and1_output,
          hor_length: -150,
          ver_length1: -55,
          ver_length2: -50,
          dy: 40,
        );
        and2_output = and2.activation(a9.activate, a10.activate);
        a11 = Bus(
          activate: and2_output,
          hor_length: 155,
          ver_length1: 20,
          ver_length2: 40,
          dy: -5,
          dx: -2.5,
        );
        or2_output = or2.activation(a11.activate, a12.activate);
        a13 = Bus(
          activate: or2_output,
          hor_length: 0,
          ver_length1: 40,
          ver_length2: 0,
          dx: -2.5,
          dy: -10,
        );
      }
      if (a13.activate == 1) {
        light = LED(
          x: a13.activate,
          y: 12,
        );
      } else {
        light = LED(
          x: a13.activate,
          y: 12,
        );
      }
      if(moves!=0){
        moves-=1;
        v = LevelHead2("12", level12(),light,mov: moves,);
      }
    });
  }

  void test5() {
    setState(() {

      if (sat5 == 1) {
        sat5 = 0;
        a5 = Bus(
          activate: sat5,
          hor_length: 0,
          ver_length1: 90,
          ver_length2: 0,
          dy: -90,
        );
        no1_output = no1.activation(a5.activate);
        a6 = Bus(
          activate: no1_output,
          hor_length: 60,
        );
        or1_output = or1.activation(a6.activate, a7.activate);
        a12 = Bus(
          activate: or1_output,
          hor_length: -300,
          ver_length1: -40,
          ver_length2: -50,
          dy: -10,
        );
        or2_output = or2.activation(a11.activate, a12.activate);
        a13 = Bus(
          activate: or2_output,
          hor_length: 0,
          ver_length1: 40,
          ver_length2: 0,
          dx: -2.5,
          dy: -10,
        );
      } else {
        sat5 = 1;
        a5 = Bus(
          activate: sat5,
          hor_length: 0,
          ver_length1: 90,
          ver_length2: 0,
          dy: -90,
        );
        no1_output = no1.activation(a5.activate);
        a6 = Bus(
          activate: no1_output,
          hor_length: 60,
        );
        or1_output = or1.activation(a6.activate, a7.activate);
        a12 = Bus(
          activate: or1_output,
          hor_length: -300,
          ver_length1: -40,
          ver_length2: -50,
          dy: -10,
        );
        or2_output = or2.activation(a11.activate, a12.activate);
        a13 = Bus(
          activate: or2_output,
          hor_length: 0,
          ver_length1: 40,
          ver_length2: 0,
          dx: -2.5,
          dy: -10,
        );
      }
      if (a13.activate == 1) {
        light = LED(
          x: a13.activate,
          y: 12,
        );
      } else {
        light = LED(
          x: a13.activate,
          y: 12,
        );
      }
      if(moves!=0){
        moves-=1;
        v = LevelHead2("12", level12(),light,mov: moves,);
      }
    });
  }

  void test6() {
    setState(() {

      if (sat6 == 1) {
        sat6 = 0;
        a7 = Bus(
          activate: sat6,
          hor_length: -65,
          ver_length1: -50,
          ver_length2: -190,
          dx: 2.5,
          dy: -190,
        );
        or1_output = or1.activation(a6.activate, a7.activate);
        a12 = Bus(
          activate: or1_output,
          hor_length: -300,
          ver_length1: -40,
          ver_length2: -50,
          dy: -10,
        );
        or2_output = or2.activation(a11.activate, a12.activate);
        a13 = Bus(
          activate: or2_output,
          hor_length: 0,
          ver_length1: 40,
          ver_length2: 0,
          dx: -2.5,
          dy: -10,
        );
      } else {
        sat6 = 1;
        a7 = Bus(
          activate: sat6,
          hor_length: -65,
          ver_length1: -50,
          ver_length2: -190,
          dx: 2.5,
          dy: -190,
        );
        or1_output = or1.activation(a6.activate, a7.activate);
        a12 = Bus(
          activate: or1_output,
          hor_length: -300,
          ver_length1: -40,
          ver_length2: -50,
          dy: -10,
        );
        or2_output = or2.activation(a11.activate, a12.activate);
        a13 = Bus(
          activate: or2_output,
          hor_length: 0,
          ver_length1: 40,
          ver_length2: 0,
          dx: -2.5,
          dy: -10,
        );
      }
      if (a13.activate == 1) {
        light = LED(
          x: a13.activate,
          y: 12,
        );
      } else {
        light = LED(
          x: a13.activate,
          y: 12,
        );
      }
      if(moves!=0){
        moves-=1;
        v = LevelHead2("12", level12(),light,mov: moves,);
      }
    });
  }

  Widget button1() {
    return FlatButton(
        onPressed: test1,
        child: Image.asset(buttons[sat1], height: 70, width: 70));
  }

  Widget button2() {
    return FlatButton(
        onPressed: test2,
        child: Image.asset(buttons[sat2], height: 70, width: 70));
  }

  Widget button3() {
    return FlatButton(
        onPressed: test3,
        child: Image.asset(buttons[sat3], height: 70, width: 70));
  }

  Widget button4() {
    return FlatButton(
        onPressed: test4,
        child: Image.asset(buttons[sat4], height: 70, width: 70));
  }

  Widget button5() {
    return FlatButton(
        onPressed: test5,
        child: Image.asset(buttons[sat5], height: 70, width: 70));
  }

  Widget button6() {
    return FlatButton(
        onPressed: test6,
        child: Image.asset(buttons[sat6], height: 70, width: 70));
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
            light,
            a13.show(),
            SizedBox(
              height: 20,
            ),
            or2,
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    a11.show(),
                    and2,
                    Row(
                      children: [
                        Column(
                          children: [
                            a9.show(),
                            SizedBox(
                              height: 30,
                            ),
                            no2,
                            a8.show(),
                            SizedBox(
                              height: 30,
                            ),
                            nand,
                            SizedBox(
                              height: 40,
                            ),
                            Row(
                              children: [
                                Column(
                                  children: [a1.show(), button1()],
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                Column(
                                  children: [a2.show(), button2()],
                                )
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          width: 100,
                        ),
                        Column(
                          children: [
                            a10.show(),
                            SizedBox(
                              height: 80,
                            ),
                            and1,
                            SizedBox(
                              height: 100,
                            ),
                            Row(
                              children: [
                                Column(
                                  children: [a3.show(), button3()],
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                Column(
                                  children: [a4.show(), button4()],
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  width: 100,
                ),
                Column(
                  children: [
                    a12.show(),
                    SizedBox(
                      height: 30,
                    ),
                    or1,
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            a6.show(),
                            SizedBox(
                              height: 30,
                            ),
                            no1,
                            SizedBox(
                              height: 80,
                            ),
                            a5.show(),
                            button5()
                          ],
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 190,
                            ),
                            a7.show(),
                            button6()
                          ],
                        )
                      ],
                    )
                  ],
                )
              ],
            )
          ],
        ));
  }
}
