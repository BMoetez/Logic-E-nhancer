import 'package:flutter/material.dart';
import '/classes/bus.dart';
import '/classes/or_gate.dart';
import '/classes/no_gate.dart';
import '/classes/and_gate.dart';
import '/classes/Nor_gate.dart';
import 'dart:ui' as ui;
import 'endlessled.dart';
import 'levelheadendless.dart';

int over = 0;
int moves = 3;
levelheadendless v = levelheadendless(
  "",
  endlesslevel2(),
  light,
  mov: moves,
);
or_gate or1 = or_gate(height: 50, width: 50);
or_gate or2 = or_gate(height: 50, width: 50);
no_gate no1 = no_gate(height: 50, width: 50);
no_gate no2 = no_gate(height: 50, width: 50);
and_gate and1 = and_gate(height: 50, width: 50);
and_gate and2 = and_gate(height: 50, width: 50);
nor_gate nor1 = nor_gate(height: 50, width: 50, rotation: 3);
int sat1 = 1;
int sat2 = 1;
int sat3 = 0;
int sat4 = 0;
int sat5 = 0;
int sat6 = 1;
int or1_output = or1.activation(a1.activate, a2.activate);
int or2_output = or2.activation(a3.activate, a4.activate);
int nor1_output = nor1.activation(a11.activate, a12.activate);
int no1_output = no1.activation(a5.activate);
int no2_output = no2.activation(a9.activate);
int and1_output = and1.activation(a6.activate, a7.activate);
int and2_output = and2.activation(a8.activate, a10.activate);

Bus a1 = Bus(
  activate: sat1,
  dy: -50,
);
Bus a2 = Bus(
  activate: sat2,
  hor_length: -50,
  ver_length1: -50,
  ver_length2: -50,
  dy: -50,
);
Bus a3 = Bus(
  activate: sat3,
  ver_length1: 30,
  ver_length2: 25,
  dy: -30,
);
Bus a4 = Bus(
  activate: sat4,
  hor_length: -50,
  ver_length1: -25,
  ver_length2: -30,
  dy: -30,
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
  ver_length1: 45,
);
Bus a7 = Bus(
  activate: sat6,
  hor_length: -60,
  ver_length1: -150,
  ver_length2: -100,
  dy: -100,
);
Bus a8 = Bus(
  activate: or1_output,
  hor_length: 140,
  ver_length1: 40,
  ver_length2: 40,
  dx: -2.5,
  dy: 20,
);
Bus a9 = Bus(
  activate: or2_output,
  hor_length: 0,
  ver_length1: 50,
  ver_length2: 0,
  dx: -2.5,
  dy: -10,
);
Bus a10 = Bus(
  activate: no2_output,
  hor_length: -150,
  ver_length1: -15,
  ver_length2: -10,
  dy: 0,
  dx: 2.5,
);
Bus a11 = Bus(
  activate: and2_output,
  hor_length: 150,
  ver_length1: 30,
  ver_length2: 35,
  dy: -20,
);
Bus a12 = Bus(
    activate: and1_output,
    hor_length: -300,
    ver_length1: -30,
    ver_length2: -30,
    dy: 10,
  );
Bus a13 = Bus(
  activate: nor1_output,
  hor_length: 0,
  ver_length1: 60,
  ver_length2: 0,
  dx: -2.5,
  dy: -10,
);
endlessled light = endlessled(
  x: a13.activate,
  y: 2,
);
void set() {
  moves = 3;
  v = levelheadendless(
    "",
    endlesslevel2(),
    light,
    mov: moves,
  );
  sat1 = 1;
  sat2 = 1;
  sat3 = 0;
  sat4 = 0;
  sat5 = 0;
  sat6 = 1;

  a1 = Bus(
    activate: sat1,
    dy: -50,
  );
  a2 = Bus(
    activate: sat2,
    hor_length: -50,
    ver_length1: -50,
    ver_length2: -50,
    dy: -50,
  );
  a3 = Bus(
    activate: sat3,
    ver_length1: 30,
    ver_length2: 25,
    dy: -30,
  );
  a4 = Bus(
    activate: sat4,
    hor_length: -50,
    ver_length1: -25,
    ver_length2: -30,
    dy: -30,
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
    ver_length1: 45,
  );
  a7 = Bus(
    activate: sat6,
    hor_length: -60,
    ver_length1: -150,
    ver_length2: -100,
    dy: -100,
  );
  or1_output = or1.activation(a1.activate, a2.activate);
  a8 = Bus(
    activate: or1_output,
    hor_length: 140,
    ver_length1: 40,
    ver_length2: 40,
    dx: -2.5,
    dy: 20,
  );
  or2_output = or2.activation(a3.activate, a4.activate);
  a9 = Bus(
    activate: or2_output,
    hor_length: 0,
    ver_length1: 50,
    ver_length2: 0,
    dx: -2.5,
    dy: -10,
  );
  no2_output = no2.activation(a9.activate);
  a10 = Bus(
    activate: no2_output,
    hor_length: -150,
    ver_length1: -15,
    ver_length2: -10,
    dy: 0,
    dx: 2.5,
  );
  and2_output = and2.activation(a8.activate, a10.activate);
  a11 = Bus(
    activate: and2_output,
    hor_length: 150,
    ver_length1: 30,
    ver_length2: 35,
    dy: -20,
  );
  and1_output = and1.activation(a6.activate, a7.activate);
    a12 = Bus(
    activate: and1_output,
    hor_length: -300,
    ver_length1: -30,
    ver_length2: -30,
    dy: 10,
  );
  nor1_output = nor1.activation(a11.activate, a12.activate);
  a13 = Bus(
    activate: nor1_output,
    hor_length: 0,
    ver_length1: 62,
    ver_length2: 0,
    dx: -2.5,
    dy: -15,
  );
  
  light = endlessled(
    x: a13.activate,
    y: 2,
  );
}

class endlesslevel2 extends StatefulWidget {
  const endlesslevel2({Key? key}) : super(key: key);

  @override
  State<endlesslevel2> createState() => _endlesslevel2State();
}

class _endlesslevel2State extends State<endlesslevel2> {
  var buttons = [
    "assets/images/button/button0.png",
    "assets/images/button/button1.png"
  ];
  void initState() {
    set();
    // if (over == 0) {
    //   WidgetsBinding.instance?.addPostFrameCallback(
    //       (_) => Overlay.of(context)?.insert(_getEntry(context)));
    //   over = 1;
    // }
    super.initState();
  }

  void test1() {
    setState(() {

      if (sat1 == 1) {
        sat1 = 0;
        a1 = Bus(
          activate: sat1,
          dy: -50,
        );
        or1_output = or1.activation(a1.activate, a2.activate);
        a8 = Bus(
          activate: or1_output,
          hor_length: 140,
          ver_length1: 40,
          ver_length2: 40,
          dx: -2.5,
          dy: 20,
        );
        and2_output = and2.activation(a8.activate, a10.activate);
        a11 = Bus(
          activate: and2_output,
          hor_length: 150,
          ver_length1: 30,
          ver_length2: 35,
          dy: -20,
        );
        nor1_output = nor1.activation(a11.activate, a12.activate);
          a13 = Bus(
    activate: nor1_output,
    hor_length: 0,
    ver_length1: 62,
    ver_length2: 0,
    dx: -2.5,
    dy: -15,
  );
  
      } else {
        sat1 = 1;
        a1 = Bus(
          activate: sat1,
          dy: -50,
        );
        or1_output = or1.activation(a1.activate, a2.activate);
        a8 = Bus(
          activate: or1_output,
          hor_length: 140,
          ver_length1: 40,
          ver_length2: 40,
          dx: -2.5,
          dy: 20,
        );
        and2_output = and2.activation(a8.activate, a10.activate);
        a11 = Bus(
          activate: and2_output,
          hor_length: 150,
          ver_length1: 30,
          ver_length2: 35,
          dy: -20,
        );
        nor1_output = nor1.activation(a11.activate, a12.activate);
          a13 = Bus(
    activate: nor1_output,
    hor_length: 0,
    ver_length1: 62,
    ver_length2: 0,
    dx: -2.5,
    dy: -15,
  );
  
      }
      if (a13.activate == 1) {
        light = endlessled(
          x: a13.activate,
          y: 2,
        );
      } else {
        light = endlessled(
          x: a13.activate,
          y: 2,
        );
      }
      if (moves != 0) {
        moves -= 1;
        v = levelheadendless(
          "",
          endlesslevel2(),light,
          mov: moves,
        );
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
          ver_length1: -50,
          ver_length2: -50,
          dy: -50,
        );
        or1_output = or1.activation(a1.activate, a2.activate);
        a8 = Bus(
          activate: or1_output,
          hor_length: 140,
          ver_length1: 40,
          ver_length2: 40,
          dx: -2.5,
          dy: 20,
        );
        and2_output = and2.activation(a8.activate, a10.activate);
        a11 = Bus(
          activate: and2_output,
          hor_length: 150,
          ver_length1: 30,
          ver_length2: 35,
          dy: -20,
        );
        nor1_output = nor1.activation(a11.activate, a12.activate);
          a13 = Bus(
    activate: nor1_output,
    hor_length: 0,
    ver_length1: 62,
    ver_length2: 0,
    dx: -2.5,
    dy: -15,
  );
  
      } else {
        sat2 = 1;
        a2 = Bus(
          activate: sat2,
          hor_length: -50,
          ver_length1: -50,
          ver_length2: -50,
          dy: -50,
        );
        or1_output = or1.activation(a1.activate, a2.activate);
        a8 = Bus(
          activate: or1_output,
          hor_length: 140,
          ver_length1: 40,
          ver_length2: 40,
          dx: -2.5,
          dy: 20,
        );
        and2_output = and2.activation(a8.activate, a10.activate);
        a11 = Bus(
          activate: and2_output,
          hor_length: 150,
          ver_length1: 30,
          ver_length2: 35,
          dy: -20,
        );
        nor1_output = nor1.activation(a11.activate, a12.activate);
          a13 = Bus(
    activate: nor1_output,
    hor_length: 0,
    ver_length1: 62,
    ver_length2: 0,
    dx: -2.5,
    dy: -15,
  );
  
      }
      if (a13.activate == 1) {
        light = endlessled(
          x: a13.activate,
          y: 2,
        );
      } else {
        light = endlessled(
          x: a13.activate,
          y: 2,
        );
      }
      if (moves != 0) {
        moves -= 1;
        v = levelheadendless(
          "",
          endlesslevel2(),light,
          mov: moves,
        );
      }
    });
  }

  void test3() {
    setState(() {

      if (sat3 == 1) {
        sat3 = 0;
        a3 = Bus(
          activate: sat3,
          ver_length1: 30,
          ver_length2: 25,
          dy: -30,
        );
        or2_output = or2.activation(a3.activate, a4.activate);
        a9 = Bus(
          activate: or2_output,
          hor_length: 0,
          ver_length1: 50,
          ver_length2: 0,
          dx: -2.5,
          dy: -10,
        );
        no2_output = no2.activation(a9.activate);
        a10 = Bus(
          activate: no2_output,
          hor_length: -150,
          ver_length1: -15,
          ver_length2: -10,
          dy: 0,
          dx: 2.5,
        );
        and2_output = and2.activation(a8.activate, a10.activate);
        a11 = Bus(
          activate: and2_output,
          hor_length: 150,
          ver_length1: 30,
          ver_length2: 35,
          dy: -20,
        );
        nor1_output = nor1.activation(a11.activate, a12.activate);
          a13 = Bus(
    activate: nor1_output,
    hor_length: 0,
    ver_length1: 62,
    ver_length2: 0,
    dx: -2.5,
    dy: -15,
  );
  
      } else {
        sat3 = 1;
        a3 = Bus(
          activate: sat3,
          ver_length1: 30,
          ver_length2: 25,
          dy: -30,
        );
        or2_output = or2.activation(a3.activate, a4.activate);
        a9 = Bus(
          activate: or2_output,
          hor_length: 0,
          ver_length1: 50,
          ver_length2: 0,
          dx: -2.5,
          dy: -10,
        );
        no2_output = no2.activation(a9.activate);
        a10 = Bus(
          activate: no2_output,
          hor_length: -150,
          ver_length1: -15,
          ver_length2: -10,
          dy: 0,
          dx: 2.5,
        );
        and2_output = and2.activation(a8.activate, a10.activate);
        a11 = Bus(
          activate: and2_output,
          hor_length: 150,
          ver_length1: 30,
          ver_length2: 35,
          dy: -20,
        );
        nor1_output = nor1.activation(a11.activate, a12.activate);
          a13 = Bus(
    activate: nor1_output,
    hor_length: 0,
    ver_length1: 62,
    ver_length2: 0,
    dx: -2.5,
    dy: -15,
  );
  
      }
      if (a13.activate == 1) {
        light = endlessled(
          x: a13.activate,
          y: 2,
        );
      } else {
        light = endlessled(
          x: a13.activate,
          y: 2,
        );
      }
      if (moves != 0) {
        moves -= 1;
        v = levelheadendless(
          "",
          endlesslevel2(),light,
          mov: moves,
        );
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
          ver_length1: -25,
          ver_length2: -30,
          dy: -30,
        );
        or2_output = or2.activation(a3.activate, a4.activate);
        a9 = Bus(
          activate: or2_output,
          hor_length: 0,
          ver_length1: 50,
          ver_length2: 0,
          dx: -2.5,
          dy: -10,
        );
        no2_output = no2.activation(a9.activate);
        a10 = Bus(
          activate: no2_output,
          hor_length: -150,
          ver_length1: -15,
          ver_length2: -10,
          dy: 0,
          dx: 2.5,
        );
        and2_output = and2.activation(a8.activate, a10.activate);
        a11 = Bus(
          activate: and2_output,
          hor_length: 150,
          ver_length1: 30,
          ver_length2: 35,
          dy: -20,
        );
        nor1_output = nor1.activation(a11.activate, a12.activate);
          a13 = Bus(
    activate: nor1_output,
    hor_length: 0,
    ver_length1: 62,
    ver_length2: 0,
    dx: -2.5,
    dy: -15,
  );
  
      } else {
        sat4 = 1;
        a4 = Bus(
          activate: sat4,
          hor_length: -50,
          ver_length1: -25,
          ver_length2: -30,
          dy: -30,
        );
        or2_output = or2.activation(a3.activate, a4.activate);
        a9 = Bus(
          activate: or2_output,
          hor_length: 0,
          ver_length1: 50,
          ver_length2: 0,
          dx: -2.5,
          dy: -10,
        );
        no2_output = no2.activation(a9.activate);
        a10 = Bus(
          activate: no2_output,
          hor_length: -150,
          ver_length1: -15,
          ver_length2: -10,
          dy: 0,
          dx: 2.5,
        );
        and2_output = and2.activation(a8.activate, a10.activate);
        a11 = Bus(
          activate: and2_output,
          hor_length: 150,
          ver_length1: 30,
          ver_length2: 35,
          dy: -20,
        );
        nor1_output = nor1.activation(a11.activate, a12.activate);
          a13 = Bus(
    activate: nor1_output,
    hor_length: 0,
    ver_length1: 62,
    ver_length2: 0,
    dx: -2.5,
    dy: -15,
  );
  
      }
      if (a13.activate == 1) {
        light = endlessled(
          x: a13.activate,
          y: 2,
        );
      } else {
        light = endlessled(
          x: a13.activate,
          y: 2,
        );
      }
      if (moves != 0) {
        moves -= 1;
        v = levelheadendless(
          "",
          endlesslevel2(),light,
          mov: moves,
        );
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
          ver_length1: 45,
        );
        and1_output = and1.activation(a6.activate, a7.activate);
        a12 = Bus(
          activate: and1_output,
          hor_length: -300,
          ver_length1: -30,
          ver_length2: -30,
          dy: 10,
        );
        nor1_output = nor1.activation(a11.activate, a12.activate);

          a13 = Bus(
    activate: nor1_output,
    hor_length: 0,
    ver_length1: 62,
    ver_length2: 0,
    dx: -2.5,
    dy: -15,
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
          ver_length1: 45,
        );
        and1_output = and1.activation(a6.activate, a7.activate);
        a12 = Bus(
          activate: and1_output,
          hor_length: -300,
          ver_length1: -30,
          ver_length2: -30,
          dy: 10,
        );
        nor1_output = nor1.activation(a11.activate, a12.activate);

          a13 = Bus(
    activate: nor1_output,
    hor_length: 0,
    ver_length1: 62,
    ver_length2: 0,
    dx: -2.5,
    dy: -15,
  );
  
      }
      if (a13.activate == 1) {
        light = endlessled(
          x: a13.activate,
          y: 2,
        );
      } else {
        light = endlessled(
          x: a13.activate,
          y: 2,
        );
      }
      if (moves != 0) {
        moves -= 1;
        v = levelheadendless(
          "",
          endlesslevel2(),light,
          mov: moves,
        );
      }
    });
  }

  void test6() {
    setState(() {

      if (sat6 == 1) {
        sat6 = 0;
        a7 = Bus(
          activate: sat6,
          hor_length: -60,
          ver_length1: -150,
          ver_length2: -100,
          dy: -100,
        );
        and1_output = and1.activation(a6.activate, a7.activate);
        a12 = Bus(
          activate: and1_output,
          hor_length: -300,
          ver_length1: -30,
          ver_length2: -30,
          dy: 10,
        );
        nor1_output = nor1.activation(a11.activate, a12.activate);

          a13 = Bus(
    activate: nor1_output,
    hor_length: 0,
    ver_length1: 62,
    ver_length2: 0,
    dx: -2.5,
    dy: -15,
  );
  
      } else {
        sat6 = 1;
        a7 = Bus(
          activate: sat6,
          hor_length: -60,
          ver_length1: -150,
          ver_length2: -100,
          dy: -100,
        );
        and1_output = and1.activation(a6.activate, a7.activate);
        a12 = Bus(
          activate: and1_output,
          hor_length: -300,
          ver_length1: -30,
          ver_length2: -30,
          dy: 10,
        );
        nor1_output = nor1.activation(a11.activate, a12.activate);

          a13 = Bus(
    activate: nor1_output,
    hor_length: 0,
    ver_length1: 62,
    ver_length2: 0,
    dx: -2.5,
    dy: -15,
  );
  
      }
      if (a13.activate == 1) {
        light = endlessled(
          x: a13.activate,
          y: 2,
        );
      } else {
        light = endlessled(
          x: a13.activate,
          y: 2,
        );
      }
      if (moves != 0) {
        moves -= 1;
        v = levelheadendless(
          "",
          endlesslevel2(),light,
          mov: moves,
        );
      }
    });
  }

  Widget button1() {
    return IgnorePointer(ignoring: light.x==1,child: FlatButton(
        onPressed: test1,
        child: Image.asset(
          buttons[sat1],
          width: 70,
          height: 60,
        )),);
  }

  Widget button2() {
    return IgnorePointer(ignoring: light.x==1,child: FlatButton(
        onPressed: test2,
        child: Image.asset(
          buttons[sat2],
          width: 70,
          height: 60,
        )),);
  }

  Widget button3() {
    return IgnorePointer(ignoring: light.x==1,child: FlatButton(
        onPressed: test3,
        child: Image.asset(
          buttons[sat3],
          width: 70,
          height: 60,
        )),);
  }

  Widget button4() {
    return IgnorePointer(ignoring: light.x==1,child: FlatButton(
        onPressed: test4,
        child: Image.asset(
          buttons[sat4],
          width: 70,
          height: 60,
        )),);
  }

  Widget button5() {
    return IgnorePointer(ignoring: light.x==1,child: FlatButton(
        onPressed: test5,
        child: Image.asset(
          buttons[sat5],
          width: 70,
          height: 60,
        )),);
  }

  Widget button6() {
    return IgnorePointer(ignoring: light.x==1,child: FlatButton(
        onPressed: test6,
        child: Image.asset(
          buttons[sat6],
          width: 70,
          height: 70,
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IgnorePointer(ignoring: light.x==1,child: v,),
            light,
            a13.show(),
            SizedBox(
              height: 40,
            ),
            nor1,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    a11.show(),
                    and2,
                    Row(
                      children: [
                        Column(
                          children: [
                            a8.show(),
                            SizedBox(
                              height: 50,
                            ),
                            or1,
                            SizedBox(
                              height: 80,
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
                            no2,
                            a9.show(),
                            SizedBox(
                              height: 30,
                            ),
                            or2,
                            SizedBox(
                              height: 30,
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
                    and1,
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
                              height: 200,
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

  OverlayEntry _getEntry(context) {
    OverlayEntry entry = OverlayEntry(builder: (_) => Container());

    entry = OverlayEntry(
      opaque: false,
      maintainState: true,
      builder: (_) => Positioned(
        left: 0,
        bottom: 0,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: BackdropFilter(
          filter: ui.ImageFilter.blur(
            sigmaX: 2,
            sigmaY: 2,
          ),
          child: Material(
            type: MaterialType.transparency,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                    width: 700,
                    height: 450,
                    color: Colors.black,
                    child: Column(
                      children: [
                        Image.asset(
                          "../../assets/images/nor_unlocked.png",
                          scale: 0.5,
                        ),
                        TextButton(
                            onPressed: () {
                              entry.remove();
                            },
                            child: Text(
                              "GO",
                              style: TextStyle(fontSize: 50),
                            ))
                      ],
                    )),
              ],
            ),
          ),
        ),
      ),
    );
    return entry;
  }
}
