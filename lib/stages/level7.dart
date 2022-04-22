import 'package:flutter/material.dart';
import '../classes/LED2.dart';
import '../classes/bus.dart';
import '../classes/or_gate.dart';
import '../classes/level_head2.dart';
import '../classes/no_gate.dart';
import '../classes/and_gate.dart';

int moves = 4;
LevelHead2 v = LevelHead2(
  "7",
  level7(),
  mov: moves,
);
or_gate OR1 = or_gate(height: 80, width: 80);
and_gate AND1 = and_gate(height: 80, width: 80);
and_gate AND2 = and_gate(height: 80, width: 80);
no_gate no1 = no_gate(height: 60, width: 60);
int sat1 = 0;
int sat2 = 1;
int sat3 = 0;
int sat4 = 0;
int and1_output = AND1.activation(a1.activate, a3.activate);
int or1_output = OR1.activation(a4.activate, a5.activate);
int no_output = no1.activation(a2.activate);
int and2_output = AND2.activation(a6.activate, a7.activate);
Bus a1 = Bus(
  activate: sat1,
  hor_length: 50,
  ver_length1: 30,
  ver_length2: 130,
  dy: -30,
);
Bus a2 = Bus(
  activate: sat2,
  hor_length: 0,
  ver_length1: 50,
  ver_length2: 0,
  dy: -50,
);
Bus a3 = Bus(
  activate: no_output,
  hor_length: -50,
  ver_length1: -25,
  ver_length2: -25,
  dy: -15,
  dx: 2.5,
);
Bus a4 = Bus(
  activate: sat3,
  hor_length: 50,
  ver_length1: 100,
  ver_length2: 90,
  dy: -100,
  dx: -2.5,
);
Bus a5 = Bus(
  activate: sat4,
  hor_length: -55,
  ver_length1: -90,
  ver_length2: -100,
  dy: -100,
  dx: 2.5,
);
Bus a6 = Bus(
  activate: and1_output,
  hor_length: 180,
  ver_length1: 65,
  ver_length2: 25,
  dy: -25,
  dx: -2.5,
);
Bus a7 = Bus(
  activate: or1_output,
  hor_length: -180,
  ver_length1: -25,
  ver_length2: -40,
  dy: -30,
);
Bus a8 = Bus(
  activate: and2_output,
  hor_length: 0,
  ver_length1: 0,
  ver_length2: 60,
  dy: 10,
  dx: 2,
);
LED light = LED(
  x: a8.activate,
  y: 7,
);
void set() {
  moves = 4;
  v = LevelHead2(
  "7",
  level7(),
  mov: moves,
);
  sat1 = 0;
  sat2 = 0;
  sat3 = 0;
  sat4 = 0;
  a1 = Bus(
    activate: sat1,
    hor_length: 50,
    ver_length1: 30,
    ver_length2: 130,
    dy: -30,
  );
  a2 = Bus(
    activate: sat2,
    hor_length: 0,
    ver_length1: 50,
    ver_length2: 0,
    dy: -50,
  );
  no_output = no1.activation(a2.activate);
  a3 = Bus(
    activate: no_output,
    hor_length: -50,
    ver_length1: -25,
    ver_length2: -25,
    dy: -15,
    dx: 2.5,
  );
  a4 = Bus(
    activate: sat3,
    hor_length: 50,
    ver_length1: 100,
    ver_length2: 90,
    dy: -100,
    dx: -2.5,
  );
  a5 = Bus(
    activate: sat4,
    hor_length: -55,
    ver_length1: -90,
    ver_length2: -100,
    dy: -100,
    dx: 2.5,
  );
  and1_output = AND1.activation(a1.activate, a3.activate);
  a6 = Bus(
    activate: and1_output,
    hor_length: 180,
    ver_length1: 65,
    ver_length2: 25,
    dy: -25,
    dx: -2.5,
  );
  or1_output = OR1.activation(a4.activate, a5.activate);
  a7 = Bus(
    activate: or1_output,
    hor_length: -180,
    ver_length1: -25,
    ver_length2: -40,
    dy: -30,
  );
  and2_output = AND2.activation(a6.activate, a7.activate);
  a8 = Bus(
    activate: and2_output,
    hor_length: 0,
    ver_length1: 0,
    ver_length2: 60,
    dy: 10,
    dx: 2,
  );
  light = LED(
    x: a8.activate,
    y: 7,
  );
}

class level7 extends StatefulWidget {
  const level7({Key? key}) : super(key: key);

  @override
  State<level7> createState() => _level7State();
}

class _level7State extends State<level7> {
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
      if(moves!=0){
moves-=1;
v = LevelHead2(
  "7",
  level7(),
  mov: moves,
);
}
      if (sat1 == 1) {
        sat1 = 0;
        a1 = Bus(
          activate: sat1,
          hor_length: 50,
          ver_length1: 30,
          ver_length2: 130,
          dy: -30,
        );
        and1_output = AND1.activation(a1.activate, a3.activate);
        a6 = Bus(
          activate: and1_output,
          hor_length: 180,
          ver_length1: 65,
          ver_length2: 25,
          dy: -25,
          dx: -2.5,
        );
        and2_output = AND2.activation(a6.activate, a7.activate);
        a8 = Bus(
          activate: and2_output,
          hor_length: 0,
          ver_length1: 0,
          ver_length2: 60,
          dy: 10,
          dx: 2,
        );
      } else {
        sat1 = 1;
        a1 = Bus(
          activate: sat1,
          hor_length: 50,
          ver_length1: 30,
          ver_length2: 130,
          dy: -30,
        );
        and1_output = AND1.activation(a1.activate, a3.activate);
        a6 = Bus(
          activate: and1_output,
          hor_length: 180,
          ver_length1: 65,
          ver_length2: 25,
          dy: -25,
          dx: -2.5,
        );
        and2_output = AND2.activation(a6.activate, a7.activate);
        a8 = Bus(
          activate: and2_output,
          hor_length: 0,
          ver_length1: 0,
          ver_length2: 60,
          dy: 10,
          dx: 2,
        );
      }
      if (a8.activate == 1) {
        light = LED(
          x: a8.activate,
          y: 7,
        );
      } else {
        light = LED(
          x: a8.activate,
          y: 7,
        );
      }
    });
  }

  void test2() {
    setState(() {
           if(moves!=0){
moves-=1;
v = LevelHead2(
  "7",
  level7(),
  mov: moves,
);
}
      if (sat2 == 1) {
        sat2 = 0;
        a2 = Bus(
          activate: sat2,
          hor_length: 0,
          ver_length1: 50,
          ver_length2: 0,
          dy: -50,
        );
        no_output = no1.activation(a2.activate);
        a3 = Bus(
          activate: no_output,
          hor_length: -50,
          ver_length1: -25,
          ver_length2: -25,
          dy: -15,
          dx: 2.5,
        );
        and1_output = AND1.activation(a1.activate, a3.activate);
        a6 = Bus(
          activate: and1_output,
          hor_length: 180,
          ver_length1: 65,
          ver_length2: 25,
          dy: -25,
          dx: -2.5,
        );
        and2_output = AND2.activation(a6.activate, a7.activate);
        a8 = Bus(
          activate: and2_output,
          hor_length: 0,
          ver_length1: 0,
          ver_length2: 60,
          dy: 10,
          dx: 2,
        );
      } else {
        sat2 = 1;
        a2 = Bus(
          activate: sat2,
          hor_length: 0,
          ver_length1: 50,
          ver_length2: 0,
          dy: -50,
        );
        no_output = no1.activation(a2.activate);
        a3 = Bus(
          activate: no_output,
          hor_length: -50,
          ver_length1: -25,
          ver_length2: -25,
          dy: -15,
          dx: 2.5,
        );
        and1_output = AND1.activation(a1.activate, a3.activate);
        a6 = Bus(
          activate: and1_output,
          hor_length: 180,
          ver_length1: 65,
          ver_length2: 25,
          dy: -25,
          dx: -2.5,
        );
        and2_output = AND2.activation(a6.activate, a7.activate);
        a8 = Bus(
          activate: and2_output,
          hor_length: 0,
          ver_length1: 0,
          ver_length2: 60,
          dy: 10,
          dx: 2,
        );
      }
      if (a8.activate == 1) {
        light = LED(
          x: a8.activate,
          y: 7,
        );
      } else {
        light = LED(
          x: a8.activate,
          y: 7,
        );
      }
    });
  }

  void test3() {
    setState(() {
           if(moves!=0){
moves-=1;
v = LevelHead2(
  "7",
  level7(),
  mov: moves,
);
}
      if (sat3 == 1) {
        sat3 = 0;
        a4 = Bus(
          activate: sat3,
          hor_length: 50,
          ver_length1: 100,
          ver_length2: 90,
          dy: -100,
          dx: -2.5,
        );
        or1_output = OR1.activation(a4.activate, a5.activate);
        a7 = Bus(
          activate: or1_output,
          hor_length: -180,
          ver_length1: -25,
          ver_length2: -40,
          dy: -30,
        );
        and2_output = AND2.activation(a6.activate, a7.activate);
        a8 = Bus(
          activate: and2_output,
          hor_length: 0,
          ver_length1: 0,
          ver_length2: 60,
          dy: 10,
          dx: 2,
        );
      } else {
        sat3 = 1;
        a4 = Bus(
          activate: sat3,
          hor_length: 50,
          ver_length1: 100,
          ver_length2: 90,
          dy: -100,
          dx: -2.5,
        );
        or1_output = OR1.activation(a4.activate, a5.activate);
        a7 = Bus(
          activate: or1_output,
          hor_length: -180,
          ver_length1: -25,
          ver_length2: -40,
          dy: -30,
        );
        and2_output = AND2.activation(a6.activate, a7.activate);
        a8 = Bus(
          activate: and2_output,
          hor_length: 0,
          ver_length1: 0,
          ver_length2: 60,
          dy: 10,
          dx: 2,
        );
      }
      if (a8.activate == 1) {
        light = LED(
          x: a8.activate,
          y: 7,
        );
      } else {
        light = LED(
          x: a8.activate,
          y: 7,
        );
      }
    });
  }

  void test4() {
    setState(() {
           if(moves!=0){
moves-=1;
v = LevelHead2(
  "7",
  level7(),
  mov: moves,
);
}
      if (sat4 == 1) {
        sat4 = 0;
        a5 = Bus(
          activate: sat4,
          hor_length: -55,
          ver_length1: -90,
          ver_length2: -100,
          dy: -100,
          dx: 2.5,
        );
        or1_output = OR1.activation(a4.activate, a5.activate);
        a7 = Bus(
          activate: or1_output,
          hor_length: -180,
          ver_length1: -25,
          ver_length2: -40,
          dy: -30,
        );
        and2_output = AND2.activation(a6.activate, a7.activate);
        a8 = Bus(
          activate: and2_output,
          hor_length: 0,
          ver_length1: 0,
          ver_length2: 60,
          dy: 10,
          dx: 2,
        );
      } else {
        sat4 = 1;
        a5 = Bus(
          activate: sat4,
          hor_length: -55,
          ver_length1: -90,
          ver_length2: -100,
          dy: -100,
          dx: 2.5,
        );
        or1_output = OR1.activation(a4.activate, a5.activate);
        a7 = Bus(
          activate: or1_output,
          hor_length: -180,
          ver_length1: -25,
          ver_length2: -40,
          dy: -30,
        );
        and2_output = AND2.activation(a6.activate, a7.activate);
        a8 = Bus(
          activate: and2_output,
          hor_length: 0,
          ver_length1: 0,
          ver_length2: 60,
          dy: 10,
          dx: 2,
        );
      }
      if (a8.activate == 1) {
        light = LED(
          x: a8.activate,
          y: 7,
        );
      } else {
        light = LED(
          x: a8.activate,
          y: 7,
        );
      }
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

  Widget button3() {
    return FlatButton(
        onPressed: test3,
        child: Image.asset(
          buttons[sat3],
          width: 100,
          height: 100,
        ));
  }

  Widget button4() {
    return FlatButton(
        onPressed: test4,
        child: Image.asset(
          buttons[sat4],
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
            light,
            SizedBox(
              height: 40,
            ),
            a8.show(),
            AND2,
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    a6.show(),
                    SizedBox(
                      height: 30,
                    ),
                    AND1,
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              height: 115,
                            ),
                            a1.show(),
                            button1()
                          ],
                        ),
                        Column(
                          children: [
                            a3.show(),
                            no1,
                            SizedBox(
                              height: 40,
                            ),
                            a2.show(),
                            button2()
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  width: 150,
                ),
                Column(
                  children: [
                    a7.show(),
                    OR1,
                    SizedBox(
                      height: 170,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [a4.show(), button3()],
                        ),
                        Column(
                          children: [a5.show(), button4()],
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
