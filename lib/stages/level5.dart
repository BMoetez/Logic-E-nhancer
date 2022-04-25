import 'package:flutter/material.dart';
import '../classes/LED2.dart';
import '../classes/bus.dart';
import '../classes/or_gate.dart';
import '../classes/level_head2.dart';
import '../classes/no_gate.dart';
import '../classes/and_gate.dart';
import 'dart:ui' as ui;

int moves = 4;
LevelHead2 v = LevelHead2(
  "5",
  level5(),
  mov: moves,
);
or_gate OR1 = or_gate(height: 60, width: 60);
and_gate AND1 = and_gate(height: 60, width: 60);
and_gate AND2 = and_gate(height: 60, width: 60);
no_gate no1 = no_gate(height: 60, width: 60);
int over = 0;
int sat1 = 1;
int sat2 = 1;
int sat3 = 0;
int sat4 = 1;
int and1_output = AND1.activation(a3.activate, a4.activate);
int or1_output = OR1.activation(a1.activate, a2.activate);
int no_output = no1.activation(a6.activate);
int and2_output = AND2.activation(a7.activate, a5.activate);
Bus a1 = Bus(
  activate: sat1,
  hor_length: 50,
  ver_length1: 30,
  ver_length2: 20,
  dy: -30,
);
Bus a2 = Bus(
  activate: sat2,
  hor_length: -55,
  ver_length1: -20,
  ver_length2: -30,
  dy: -30,
);
Bus a3 = Bus(
  activate: sat3,
  hor_length: 50,
  ver_length1: 70,
  ver_length2: 100,
  dy: -70,
);
Bus a4 = Bus(
  activate: sat4,
  hor_length: -50,
  ver_length1: -100,
  ver_length2: -70,
  dy: -70,
);
Bus a5 = Bus(
  activate: and1_output,
  hor_length: -180,
  ver_length1: -30,
  ver_length2: -40,
  dy: -30,
);
Bus a6 = Bus(
  activate: or1_output,
  hor_length: 0,
  ver_length1: 0,
  ver_length2: 70,

  dy: 10,
);
Bus a7 = Bus(
  activate: no_output,
  hor_length: 180,
  ver_length1: 30,
  ver_length2: 30,
  dy: -20,
);
Bus a8 = Bus(
  activate: and2_output,
  hor_length: 0,
  ver_length1: 0,
  ver_length2: 80,
  dy: 10,
  dx: 2,
);
LED light = LED(
  x: a8.activate,
  y: 5,
);
void set() {
  moves = 4;
  v = LevelHead2(
  "5",
  level5(),
  mov: moves,
);
  sat1 = 1;
  sat2 = 1;
  sat3 = 0;
  sat4 = 1;
  a1 = Bus(
    activate: sat1,
    hor_length: 50,
    ver_length1: 30,
    ver_length2: 20,
    dy: -30,
  );
  a2 = Bus(
    activate: sat2,
    hor_length: -55,
    ver_length1: -20,
    ver_length2: -30,
    dy: -30,
  );
  a3 = Bus(
    activate: sat3,
    hor_length: 50,
    ver_length1: 70,
    ver_length2: 100,
    dy: -70,
  );
  a4 = Bus(
    activate: sat4,
    hor_length: -50,
    ver_length1: -100,
    ver_length2: -70,
    dy: -70,
  );
  and1_output = AND1.activation(a3.activate, a4.activate);
  a5 = Bus(
    activate: and1_output,
    hor_length: -180,
    ver_length1: -30,
    ver_length2: -40,
    dy: -30,
  );
  or1_output = OR1.activation(a1.activate, a2.activate);
  a6 = Bus(
    activate: or1_output,
    hor_length: 0,
    ver_length1: 0,
    ver_length2: 70,

    dy: 10,
  );
  no_output = no1.activation(a6.activate);
  a7 = Bus(
    activate: no_output,
    hor_length: 180,
    ver_length1: 30,
    ver_length2: 30,
    dy: -20,
  );
  and2_output = AND2.activation(a7.activate, a5.activate);
  a8 = Bus(
    activate: and2_output,
    hor_length: 0,
    ver_length1: 0,
    ver_length2: 80,
    dy: 10,
    dx: 2,
  );
  light = LED(
    x: a8.activate,
    y: 5,
  );
}

class level5 extends StatefulWidget {
  const level5({Key? key}) : super(key: key);

  @override
  State<level5> createState() => _level5State();
}

class _level5State extends State<level5> {
  var buttons = [
    "assets/images/button/button0.png",
    "assets/images/button/button1.png"
  ];

  void initState() {
    set();
    if (over == 0) {
      WidgetsBinding.instance?.addPostFrameCallback(
          (_) => Overlay.of(context)?.insert(_getEntry(context)));
      over = 1;
    }
    super.initState();
  }

  void test1() {
    setState(() {if(moves!=0){
moves-=1;
v = LevelHead2(
  "5",
  level5(),
  mov: moves,
);
}
      if (sat1 == 1) {
        sat1 = 0;
        a1 = Bus(
          activate: sat1,
          hor_length: 50,
          ver_length1: 30,
          ver_length2: 20,
          dy: -30,
        );
        or1_output = OR1.activation(a1.activate, a2.activate);
        a6 = Bus(
          activate: or1_output,
          hor_length: 0,
          ver_length1: 0,
          ver_length2: 70,

          dy: 10,
        );
        no_output = no1.activation(a6.activate);
        a7 = Bus(
          activate: no_output,
          hor_length: 180,
          ver_length1: 30,
          ver_length2: 30,
          dy: -20,
        );
        and2_output = AND2.activation(a7.activate, a5.activate);
        a8 = Bus(
          activate: and2_output,
          hor_length: 0,
          ver_length1: 0,
          ver_length2: 80,
          dy: 10,
          dx: 2,
        );
      } else {
        sat1 = 1;
        a1 = Bus(
          activate: sat1,
          hor_length: 50,
          ver_length1: 30,
          ver_length2: 20,
          dy: -30,
        );
        or1_output = OR1.activation(a1.activate, a2.activate);
        a6 = Bus(
          activate: or1_output,
          hor_length: 0,
          ver_length1: 0,
          ver_length2: 70,

          dy: 10,
        );
        no_output = no1.activation(a6.activate);
        a7 = Bus(
          activate: no_output,
          hor_length: 180,
          ver_length1: 30,
          ver_length2: 30,
          dy: -20,
        );
        and2_output = AND2.activation(a7.activate, a5.activate);
        a8 = Bus(
          activate: and2_output,
          hor_length: 0,
          ver_length1: 0,
          ver_length2: 80,
          dy: 10,
          dx: 2,
        );
      }
      if (a8.activate == 1) {
        light = LED(
          x: a8.activate,
          y: 5,
        );
      } else {
        light = LED(
          x: a8.activate,
          y: 5,
        );
      }
    });
  }

  void test2() {
    setState(() {
      if(moves!=0){
moves-=1;
v = LevelHead2(
  "5",
  level5(),
  mov: moves,
);
}
      if (sat2 == 1) {
        sat2 = 0;
        a2 = Bus(
          activate: sat2,
          hor_length: -55,
          ver_length1: -20,
          ver_length2: -30,
          dy: -30,
        );
        or1_output = OR1.activation(a1.activate, a2.activate);
        a6 = Bus(
          activate: or1_output,
          hor_length: 0,
          ver_length1: 0,
          ver_length2: 70,

          dy: 10,
        );
        no_output = no1.activation(a6.activate);
        a7 = Bus(
          activate: no_output,
          hor_length: 180,
          ver_length1: 30,
          ver_length2: 30,
          dy: -20,
        );
        and2_output = AND2.activation(a7.activate, a5.activate);
        a8 = Bus(
          activate: and2_output,
          hor_length: 0,
          ver_length1: 0,
          ver_length2: 80,
          dy: 10,
          dx: 2,
        );
      } else {
        sat2 = 1;
        a2 = Bus(
          activate: sat2,
          hor_length: -55,
          ver_length1: -20,
          ver_length2: -30,
          dy: -30,
        );
        or1_output = OR1.activation(a1.activate, a2.activate);
        a6 = Bus(
          activate: or1_output,
          hor_length: 0,
          ver_length1: 0,
          ver_length2: 70,

          dy: 10,
        );
        no_output = no1.activation(a6.activate);
        a7 = Bus(
          activate: no_output,
          hor_length: 180,
          ver_length1: 30,
          ver_length2: 30,
          dy: -20,
        );
        and2_output = AND2.activation(a7.activate, a5.activate);
        a8 = Bus(
          activate: and2_output,
          hor_length: 0,
          ver_length1: 0,
          ver_length2: 80,
          dy: 10,
          dx: 2,
        );
      }
      if (a8.activate == 1) {
        light = LED(
          x: a8.activate,
          y: 5,
        );
      } else {
        light = LED(
          x: a8.activate,
          y: 5,
        );
      }
    });
  }

  void test3() {
    setState(() {
      if(moves!=0){
moves-=1;
v = LevelHead2(
  "5",
  level5(),
  mov: moves,
);
}
      if (sat3 == 1) {
        sat3 = 0;
        a3 = Bus(
          activate: sat3,
          hor_length: 50,
          ver_length1: 70,
          ver_length2: 100,
          dy: -70,
        );
        and1_output = AND1.activation(a3.activate, a4.activate);
        a5 = Bus(
          activate: and1_output,
          hor_length: -180,
          ver_length1: -30,
          ver_length2: -40,
          dy: -30,
        );
        and2_output = AND2.activation(a7.activate, a5.activate);
        a8 = Bus(
          activate: and2_output,
          hor_length: 0,
          ver_length1: 0,
          ver_length2: 80,
          dy: 10,
          dx: 2,
        );
      } else {
        sat3 = 1;
        a3 = Bus(
          activate: sat3,
          hor_length: 50,
          ver_length1: 70,
          ver_length2: 100,
          dy: -70,
        );
        and1_output = AND1.activation(a3.activate, a4.activate);
        a5 = Bus(
          activate: and1_output,
          hor_length: -180,
          ver_length1: -30,
          ver_length2: -40,
          dy: -30,
        );
        and2_output = AND2.activation(a7.activate, a5.activate);
        a8 = Bus(
          activate: and2_output,
          hor_length: 0,
          ver_length1: 0,
          ver_length2: 80,
          dy: 10,
          dx: 2,
        );
      }
      if (a8.activate == 1) {
        light = LED(
          x: a8.activate,
          y: 5,
        );
      } else {
        light = LED(
          x: a8.activate,
          y: 5,
        );
      }
    });
  }

  void test4() {
    setState(() {
      if(moves!=0){
moves-=1;
v = LevelHead2(
  "5",
  level5(),
  mov: moves,
);
}
      if (sat4 == 1) {
        sat4 = 0;
        a4 = Bus(
          activate: sat4,
          hor_length: -50,
          ver_length1: -100,
          ver_length2: -70,
          dy: -70,
        );
        and1_output = AND1.activation(a3.activate, a4.activate);
        a5 = Bus(
          activate: and1_output,
          hor_length: -180,
          ver_length1: -30,
          ver_length2: -40,
          dy: -30,
        );
        and2_output = AND2.activation(a7.activate, a5.activate);
        a8 = Bus(
          activate: and2_output,
          hor_length: 0,
          ver_length1: 0,
          ver_length2: 80,
          dy: 10,
          dx: 2,
        );
      } else {
        sat4 = 1;
        a4 = Bus(
          activate: sat4,
          hor_length: -50,
          ver_length1: -100,
          ver_length2: -70,
          dy: -70,
        );
        and1_output = AND1.activation(a3.activate, a4.activate);
        a5 = Bus(
          activate: and1_output,
          hor_length: -180,
          ver_length1: -30,
          ver_length2: -40,
          dy: -30,
        );
        and2_output = AND2.activation(a7.activate, a5.activate);
        a8 = Bus(
          activate: and2_output,
          hor_length: 0,
          ver_length1: 0,
          ver_length2: 80,
          dy: 10,
          dx: 2,
        );
      }
      if (a8.activate == 1) {
        light = LED(
          x: a8.activate,
          y: 5,
        );
      } else {
        light = LED(
          x: a8.activate,
          y: 5,
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
              height: 50,
            ),
            a8.show(),
            AND2,
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
                    no1,
                    SizedBox(
                      height: 50,
                    ),
                    a6.show(),
                    OR1,
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [a1.show(), button1()],
                        ),
                        Column(
                          children: [a2.show(), button2()],
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
                    a5.show(),
                    AND1,
                    SizedBox(
                      height: 160,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [a3.show(), button3()],
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
                          "../../assets/images/and_unlocked.png",
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
