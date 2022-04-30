// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import '../classes/LED2.dart';
import '../classes/bus.dart';
import '../classes/level_head2.dart';
import '../classes/or_gate.dart';
import '../classes/no_gate.dart';

int moves = 2;
LevelHead2 v = LevelHead2(
  "4",
  level4(),light,
  mov: moves,
);
or_gate OR1 = or_gate(height: 50, width: 50);
or_gate OR2 = or_gate(height: 50, width: 50);
or_gate OR3 = or_gate(height: 50, width: 50);
no_gate no1 = no_gate(height: 50, width: 70);
no_gate no2 = no_gate(height: 50, width: 70);
int sat1 = 0;
int sat2 = 1;
int sat3 = 1;
int sat4 = 0;
int or1_output = OR1.activation(a1.activate, a3.activate);
int or2_output = OR2.activation(a5.activate, a6.activate);
int or3_output = OR3.activation(a7.activate, a8.activate);
int no1_output = no1.activation(a2.activate);
int no2_output = no2.activation(a4.activate);
Bus a1 = Bus(
  activate: sat1,
  hor_length: 50,
  ver_length1: 80,
  ver_length2: 105,
  dx: -2.5,
  dy: 35,
);
Bus a2 = Bus(
  activate: sat2,
  hor_length: 0,
  ver_length1: 0,
  ver_length2: 40,
  dx: 2.5,
);
Bus a3 = Bus(
  activate: no1_output,
  hor_length: -60,
  ver_length1: -40,
  ver_length2: -40,
  dy: -30,
  dx: 2.5,
);
Bus a4 = Bus(
  activate: sat3,
  hor_length: 0,
  ver_length1: 0,
  ver_length2: 45,
  dx: 2.5,
);
Bus a5 = Bus(
  activate: no2_output,
  hor_length: 50,
  ver_length1: 50,
  ver_length2: 30,
  dy: -40,
);
Bus a6 = Bus(
  activate: sat4,
  hor_length: -50,
  ver_length1: -90,
  ver_length2: -90,
  dy: 20,
);
Bus a7 = Bus(
  activate: or1_output,
  hor_length: 210,
  ver_length1: 40,
  ver_length2: 40,
  dy: -30,
  dx: -5,
);
Bus a8 = Bus(
  activate: or2_output,
  hor_length: -210,
  ver_length1: -40,
  ver_length2: -40,
  dy: -30,
);
Bus a9 = Bus(
  activate: or3_output,
  hor_length: 0,
  ver_length1: 0,
  ver_length2: 80,dx:2.5,
  dy: 10,
);
LED light = LED(
  x: a9.activate,
  y: 4,
);
void set() {
  moves = 2;
  v = LevelHead2(
  "4",
  level4(),light,
  mov: moves,
);
  sat1 = 0;
  sat2 = 1;
  sat3 = 1;
  sat4 = 0;
  a1 = Bus(
    activate: sat1,
    hor_length: 50,
    ver_length1: 80,
    ver_length2: 105,
    dx: -2.5,
    dy: 35,
  );
  a2 = Bus(
    activate: sat2,
    hor_length: 0,
    ver_length1: 0,
    ver_length2: 40,
    dx: 2.5,
  );
  no1_output = no1.activation(a2.activate);
  a3 = Bus(
    activate: no1_output,
    hor_length: -60,
    ver_length1: -40,
    ver_length2: -40,
    dy: -30,
    dx: 2.5,
  );
  a4 = Bus(
    activate: sat3,
    hor_length: 0,
    ver_length1: 0,
    ver_length2: 45,
    dx: 2.5,
  );
  no2_output = no2.activation(a4.activate);
  a5 = Bus(
    activate: no2_output,
    hor_length: 50,
    ver_length1: 50,
    ver_length2: 30,
    dy: -40,
  );
  a6 = Bus(
    activate: sat4,
    hor_length: -50,
    ver_length1: -90,
    ver_length2: -90,
    dy: 20,
  );
  or1_output = OR1.activation(a1.activate, a3.activate);
  a7 = Bus(
    activate: or1_output,
    hor_length: 210,
    ver_length1: 40,
    ver_length2: 40,
    dy: -30,
    dx: -5,
  );
  or2_output = OR2.activation(a5.activate, a6.activate);

  a8 = Bus(
    activate: or2_output,
    hor_length: -210,
    ver_length1: -40,
    ver_length2: -40,
    dy: -30,
  );
  or3_output = OR3.activation(a7.activate, a8.activate);

  a9 = Bus(
    activate: or3_output,
    hor_length: 0,
    ver_length1: 0,
    ver_length2: 80,dx:2.5,
    dy: 10,
  );
  light = LED(
    x: a9.activate,
    y: 4,
  );
}

class level4 extends StatefulWidget {
  const level4({Key? key}) : super(key: key);

  @override
  State<level4> createState() => _level4State();
}

class _level4State extends State<level4> {
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
      if(moves!=0){
moves-=1;
v = LevelHead2(
  "4",
  level4(),light,
  mov: moves,
);
}
      if (sat1 == 1) {
        sat1 = 0;

        a1 = Bus(
          activate: sat1,
          hor_length: 50,
          ver_length1: 80,
          ver_length2: 105,
          dx: -2.5,
          dy: 35,
        );
        or1_output = OR1.activation(a1.activate, a3.activate);
        a7 = Bus(
          activate: or1_output,
          hor_length: 210,
          ver_length1: 40,
          ver_length2: 40,
          dy: -30,
          dx: -5,
        );
        or3_output = OR3.activation(a7.activate, a8.activate);
        a9 = Bus(
          activate: or3_output,
          hor_length: 0,
          ver_length1: 0,
          ver_length2: 80,dx:2.5,
          dy: 10,
        );
      } else {
        sat1 = 1;
        a1 = Bus(
          activate: sat1,
          hor_length: 50,
          ver_length1: 80,
          ver_length2: 105,
          dx: -2.5,
          dy: 35,
        );
        or1_output = OR1.activation(a1.activate, a3.activate);
        a7 = Bus(
          activate: or1_output,
          hor_length: 210,
          ver_length1: 40,
          ver_length2: 40,
          dy: -30,
          dx: -5,
        );
        or3_output = OR3.activation(a7.activate, a8.activate);
        a9 = Bus(
          activate: or3_output,
          hor_length: 0,
          ver_length1: 0,
          ver_length2: 80,dx:2.5,
          dy: 10,
        );
      }
      if (a9.activate == 1) {
        light = LED(
          x: a9.activate,
          y: 4,
        );
      } else {
        light = LED(
          x: a9.activate,
          y: 4,
        );
      }
    });
  }

  void test2() {
    setState(() {
           if(moves!=0){
moves-=1;
v = LevelHead2(
  "4",
  level4(),light,
  mov: moves,
);
}
      if (sat2 == 1) {
        sat2 = 0;
        a2 = Bus(
          activate: sat2,
          hor_length: 0,
          ver_length1: 0,
          ver_length2: 40,
          dx: 2.5,
        );
        no1_output = no1.activation(a2.activate);
        a3 = Bus(
          activate: no1_output,
          hor_length: -60,
          ver_length1: -40,
          ver_length2: -40,
          dy: -30,
          dx: 2.5,
        );
        int or1_output = OR1.activation(a1.activate, a3.activate);
        a7 = Bus(
          activate: or1_output,
          hor_length: 210,
          ver_length1: 40,
          ver_length2: 40,
          dy: -30,
          dx: -5,
        );
        or3_output = OR3.activation(a7.activate, a8.activate);
        a9 = Bus(
          activate: or3_output,
          hor_length: 0,
          ver_length1: 0,
          ver_length2: 80,dx:2.5,
          dy: 10,
        );
      } else {
        sat2 = 1;
        a2 = Bus(
          activate: sat2,
          hor_length: 0,
          ver_length1: 0,
          ver_length2: 40,
          dx: 2.5,
        );
        no1_output = no1.activation(a2.activate);
        a3 = Bus(
          activate: no1_output,
          hor_length: -60,
          ver_length1: -40,
          ver_length2: -40,
          dy: -30,
          dx: 2.5,
        );
        int or1_output = OR1.activation(a1.activate, a3.activate);
        a7 = Bus(
          activate: or1_output,
          hor_length: 210,
          ver_length1: 40,
          ver_length2: 40,
          dy: -30,
          dx: -5,
        );
        or3_output = OR3.activation(a7.activate, a8.activate);
        a9 = Bus(
          activate: or3_output,
          hor_length: 0,
          ver_length1: 0,
          ver_length2: 80,dx:2.5,
          dy: 10,
        );
      }
      if (a9.activate == 1) {
        light = LED(
          x: a9.activate,
          y: 4,
        );
      } else {
        light = LED(
          x: a9.activate,
          y: 4,
        );
      }
    });
  }

  void test3() {
    setState(() {
           if(moves!=0){
moves-=1;
v = LevelHead2(
  "4",
  level4(),light,
  mov: moves,
);
}
      if (sat3 == 1) {
        sat3 = 0;
        a4 = Bus(
          activate: sat3,
          hor_length: 0,
          ver_length1: 0,
          ver_length2: 45,
          dx: 2.5,
        );
        no2_output = no2.activation(a4.activate);
        a5 = Bus(
          activate: no2_output,
          hor_length: 50,
          ver_length1: 50,
          ver_length2: 30,
          dy: -40,
        );
        or2_output = OR2.activation(a5.activate, a6.activate);
        a8 = Bus(
          activate: or2_output,
          hor_length: -210,
          ver_length1: -40,
          ver_length2: -40,
          dy: -30,
        );
        or3_output = OR3.activation(a7.activate, a8.activate);
        a9 = Bus(
          activate: or3_output,
          hor_length: 0,
          ver_length1: 0,
          ver_length2: 80,dx:2.5,
          dy: 10,
        );
      } else {
        sat3 = 1;
        a4 = Bus(
          activate: sat3,
          hor_length: 0,
          ver_length1: 0,
          ver_length2: 45,
          dx: 2.5,
        );
        no2_output = no2.activation(a4.activate);
        a5 = Bus(
          activate: no2_output,
          hor_length: 50,
          ver_length1: 50,
          ver_length2: 30,
          dy: -40,
        );
        or2_output = OR2.activation(a5.activate, a6.activate);
        a8 = Bus(
          activate: or2_output,
          hor_length: -210,
          ver_length1: -40,
          ver_length2: -40,
          dy: -30,
        );
        or3_output = OR3.activation(a7.activate, a8.activate);
        a9 = Bus(
          activate: or3_output,
          hor_length: 0,
          ver_length1: 0,
          ver_length2: 80,dx:2.5,
          dy: 10,
        );
      }
      if (a9.activate == 1) {
        light = LED(
          x: a9.activate,
          y: 4,
        );
      } else {
        light = LED(
          x: a9.activate,
          y: 4,
        );
      }
    });
  }

  void test4() {
    setState(() {
           if(moves!=0){
moves-=1;
v = LevelHead2(
  "4",
  level4(),light,
  mov: moves,
);
}
      if (sat4 == 1) {
        sat4 = 0;
        a6 = Bus(
          activate: sat4,
          hor_length: -50,
          ver_length1: -90,
          ver_length2: -90,
          dy: 20,
        );
        or2_output = OR2.activation(a5.activate, a6.activate);
        a8 = Bus(
          activate: or2_output,
          hor_length: -210,
          ver_length1: -40,
          ver_length2: -40,
          dy: -30,
        );
        or3_output = OR3.activation(a7.activate, a8.activate);
        a9 = Bus(
          activate: or3_output,
          hor_length: 0,
          ver_length1: 0,
          ver_length2: 80,dx:2.5,
          dy: 10,
        );
      } else {
        sat4 = 1;
        a6 = Bus(
          activate: sat4,
          hor_length: -50,
          ver_length1: -90,
          ver_length2: -90,
          dy: 20,
        );
        or2_output = OR2.activation(a5.activate, a6.activate);
        a8 = Bus(
          activate: or2_output,
          hor_length: -210,
          ver_length1: -40,
          ver_length2: -40,
          dy: -30,
        );
        or3_output = OR3.activation(a7.activate, a8.activate);
        a9 = Bus(
          activate: or3_output,
          hor_length: 0,
          ver_length1: 0,
          ver_length2: 80,dx:2.5,
          dy: 10,
        );
      }
      if (a9.activate == 1) {
        light = LED(
          x: a9.activate,
          y: 4,
        );
      } else {
        light = LED(
          x: a9.activate,
          y: 4,
        );
      }
    });
  }

  Widget button1() {
    return IgnorePointer(ignoring: (light.x==1 || moves==0),child: FlatButton(
        onPressed: test1,
        child: Image.asset(
          buttons[sat1],
          width: 100,
          height: 100,
        )),);
  }

  Widget button2() {
    return IgnorePointer(ignoring: (light.x==1 || moves==0),child: FlatButton(
        onPressed: test2,
        child: Image.asset(
          buttons[sat2],
          width: 100,
          height: 100,
        )),);
  }

  Widget button3() {
    return IgnorePointer(ignoring: (light.x==1 || moves==0),child: FlatButton(
        onPressed: test3,
        child: Image.asset(
          buttons[sat3],
          width: 100,
          height: 100,
        )),);
  }

  Widget button4() {
    return IgnorePointer(ignoring: (light.x==1 || moves==0),child: FlatButton(
        onPressed: test4,
        child: Image.asset(
          buttons[sat4],
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IgnorePointer(ignoring: (light.x==1 || moves==0),child: v,),
            light,
            SizedBox(
              height: 50,
            ),
            a9.show(),
            OR3,
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    a7.show(),
                    OR1,
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            a1.show(),
                            SizedBox(
                              height: 110,
                            ),
                            button1()
                          ],
                        ),
                        Column(
                          children: [
                            a3.show(),
                            no1,
                            SizedBox(
                              height: 30,
                            ),
                            a2.show(),
                            button2()
                          ],
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  width: 200,
                ),
                Column(
                  children: [
                    a8.show(),
                    OR2,
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            a5.show(),
                            no2,
                            SizedBox(
                              height: 30,
                            ),
                            a4.show(),
                            button3()
                          ],
                        ),
                        Column(
                          children: [
                            a6.show(),
                            SizedBox(
                              height: 110,
                            ),
                            button4()
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
