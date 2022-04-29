import 'package:flutter/material.dart';
import '../classes/LED2.dart';
import '../classes/bus.dart';
import '../classes/level_head2.dart';
import '../classes/no_gate.dart';
import '../classes/and_gate.dart';
import '../classes/Nor_gate.dart';
import '../classes/Nand_gate.dart';
import '../classes/or_gate.dart';

int moves = 3;
LevelHead2 v = LevelHead2(
  "18",
  level18(),
  mov: moves,
);
or_gate or1 = or_gate(height: 50, width: 50);
no_gate no1 = no_gate(height: 50, width: 50);
no_gate no2 = no_gate(height: 50, width: 50);
no_gate no3 = no_gate(height: 50, width: 50);
and_gate and1 = and_gate(height: 50, width: 50);
nand_gate nand1 = nand_gate(height: 50, width: 50, rotation: 3);
nor_gate nor1 = nor_gate(height: 50, width: 50, rotation: 3);
nor_gate nor2 = nor_gate(height: 50, width: 50, rotation: 3);
int sat1 = 0;
int sat2 = 1;
int sat3 = 1;
int sat4 = 1;
int sat5 = 1;
int sat6 = 1;

int nor1_output = nor1.activation(a6.activate, a7.activate);
int nor2_output = nor2.activation(a11.activate, a12.activate);
int no1_output = no1.activation(a5.activate);
int no2_output = no2.activation(a9.activate);
int no3_output = no3.activation(a13.activate);
int and1_output = and1.activation(a8.activate, a10.activate);
int or1_output = or1.activation(a3.activate, a4.activate);
int nand1_output = nand1.activation(a1.activate, a2.activate);
Bus a1 = Bus(
  activate: sat1,
  hor_length: 50,
  ver_length1: 40,
  ver_length2: 40,
  dy: -40,
);
Bus a2 = Bus(
  activate: sat2,
  hor_length: -50,
  ver_length1: -40,
  ver_length2: -40,
  dy: -40,
);
Bus a3 = Bus(
  activate: sat3,
  ver_length1: 0,
  ver_length2: 25,
);
Bus a4 = Bus(
  activate: sat4,
  hor_length: -50,
  ver_length1: -25,
  ver_length2: -0,
);
Bus a5 = Bus(
  activate: sat5,
  hor_length: 0,
  ver_length1: 35,
  ver_length2: 0,
  dy: -35,
);
Bus a6 = Bus(
  activate: no1_output,
  hor_length: 55,
  ver_length1: 45,
  ver_length2: 47,
);
Bus a7 = Bus(
  activate: sat6,
  hor_length: -70,
  ver_length1: -80,
  ver_length2: -100,
  dx: 2.5,
  dy: -100,
);
Bus a8 = Bus(
  activate: nand1_output,
  hor_length: 140,
  ver_length1: 40,
  ver_length2: 20,
);
Bus a9 = Bus(
  activate: or1_output,
  hor_length: 0,
  ver_length1: 50,
  ver_length2: 0,
  dy: -10,
  dx: -2.5,
);
Bus a10 = Bus(
  activate: no2_output,
  hor_length: -140,
  ver_length1: -15,
  ver_length2: -15,
  dx: 2.5,
);
Bus a11 = Bus(
  activate: and1_output,
  hor_length: 150,
  ver_length1: 15,
  ver_length2: 20,
);
Bus a12 = Bus(
  activate: nor1_output,
  hor_length: -290,
  ver_length1: -40,
  ver_length2: -20,
  dy: 20,
);
Bus a13 = Bus(
  activate: nor2_output,
  hor_length: 0,
  ver_length1: 45,
  ver_length2: 0,
  dx: -2.5,
  dy: -15,
);
Bus a14 = Bus(
  activate: no3_output,
  hor_length: 0,
  ver_length1: 40,
  ver_length2: 0,
  dy: -10,
);
LED light = LED(
  x: a14.activate,
  y: 18,
);
void set() {
  moves = 3;
  v = LevelHead2("18", level18(),mov: moves,);
  sat1 = 0;
  sat2 = 1;
  sat3 = 1;
  sat4 = 1;
  sat5 = 1;
  sat6 = 1;
  a1 = Bus(
    activate: sat1,
    hor_length: 50,
    ver_length1: 40,
    ver_length2: 40,
    dy: -40,
  );
  a2 = Bus(
    activate: sat2,
    hor_length: -50,
    ver_length1: -40,
    ver_length2: -40,
    dy: -40,
  );
  a3 = Bus(
    activate: sat3,
    ver_length1: 0,
    ver_length2: 25,
  );
  a4 = Bus(
    activate: sat4,
    hor_length: -50,
    ver_length1: -25,
    ver_length2: -0,
  );
  a5 = Bus(
    activate: sat5,
    hor_length: 0,
    ver_length1: 35,
    ver_length2: 0,
    dy: -35,
  );
  no1_output = no1.activation(a5.activate);
  a6 = Bus(
    activate: no1_output,
    hor_length: 55,
    ver_length1: 45,
    ver_length2: 47,
  );
  a7 = Bus(
    activate: sat6,
    hor_length: -70,
    ver_length1: -80,
    ver_length2: -100,
    dx: 2.5,
    dy: -100,
  );
  nand1_output = nand1.activation(a1.activate, a2.activate);
  a8 = Bus(
    activate: nand1_output,
    hor_length: 140,
    ver_length1: 40,
    ver_length2: 20,
  );
  or1_output = or1.activation(a3.activate, a4.activate);
  a9 = Bus(
    activate: or1_output,
    hor_length: 0,
    ver_length1: 50,
    ver_length2: 0,
    dy: -10,
    dx: -2.5,
  );
  no2_output = no2.activation(a9.activate);
  a10 = Bus(
    activate: no2_output,
    hor_length: -140,
    ver_length1: -15,
    ver_length2: -15,
    dx: 2.5,
  );
  and1_output = and1.activation(a8.activate, a10.activate);
  a11 = Bus(
    activate: and1_output,
    hor_length: 150,
    ver_length1: 15,
    ver_length2: 20,
  );
  nor1_output = nor1.activation(a6.activate, a7.activate);
  a12 = Bus(
    activate: nor1_output,
    hor_length: -290,
    ver_length1: -40,
    ver_length2: -20,
    dy: 20,
  );
  nor2_output = nor2.activation(a11.activate, a12.activate);
  a13 = Bus(
    activate: nor2_output,
    hor_length: 0,
    ver_length1: 45,
    ver_length2: 0,
    dx: -2.5,
    dy: -15,
  );
  no3_output = no3.activation(a13.activate);
  a14 = Bus(
    activate: no3_output,
    hor_length: 0,
    ver_length1: 40,
    ver_length2: 0,
    dy: -10,
  );
  light = LED(
    x: a14.activate,
    y: 18,
  );
}

class level18 extends StatefulWidget {
  const level18({Key? key}) : super(key: key);

  @override
  State<level18> createState() => _level18State();
}

class _level18State extends State<level18> {
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
v = LevelHead2("18", level18(),mov: moves,);
}
      if (sat1 == 1) {
        sat1 = 0;
        a1 = Bus(
          activate: sat1,
          hor_length: 50,
          ver_length1: 40,
          ver_length2: 40,
          dy: -40,
        );
        nand1_output = nand1.activation(a1.activate, a2.activate);
        a8 = Bus(
          activate: nand1_output,
          hor_length: 140,
          ver_length1: 40,
          ver_length2: 20,
        );
        and1_output = and1.activation(a8.activate, a10.activate);
        a11 = Bus(
          activate: and1_output,
          hor_length: 150,
          ver_length1: 15,
          ver_length2: 20,
        );
        nor2_output = nor2.activation(a11.activate, a12.activate);
        a13 = Bus(
          activate: nor2_output,
          hor_length: 0,
          ver_length1: 45,
          ver_length2: 0,
          dx: -2.5,
          dy: -15,
        );
        no3_output = no3.activation(a13.activate);
        a14 = Bus(
          activate: no3_output,
          hor_length: 0,
          ver_length1: 40,
          ver_length2: 0,
          dy: -10,
        );
      } else {
        sat1 = 1;
        a1 = Bus(
          activate: sat1,
          hor_length: 50,
          ver_length1: 40,
          ver_length2: 40,
          dy: -40,
        );
        nand1_output = nand1.activation(a1.activate, a2.activate);
        a8 = Bus(
          activate: nand1_output,
          hor_length: 140,
          ver_length1: 40,
          ver_length2: 20,
        );
        and1_output = and1.activation(a8.activate, a10.activate);
        a11 = Bus(
          activate: and1_output,
          hor_length: 150,
          ver_length1: 15,
          ver_length2: 20,
        );
        nor2_output = nor2.activation(a11.activate, a12.activate);
        a13 = Bus(
          activate: nor2_output,
          hor_length: 0,
          ver_length1: 45,
          ver_length2: 0,
          dx: -2.5,
          dy: -15,
        );
        no3_output = no3.activation(a13.activate);
        a14 = Bus(
          activate: no3_output,
          hor_length: 0,
          ver_length1: 40,
          ver_length2: 0,
          dy: -10,
        );
      }
      if (a14.activate == 1) {
        light = LED(
          x: a14.activate,
          y: 18,
        );
      } else {
        light = LED(
          x: a14.activate,
          y: 18,
        );
      }
    });
  }

  void test2() {
    setState(() {
           if(moves!=0){
moves-=1;
v = LevelHead2("18", level18(),mov: moves,);
}
      if (sat2 == 1) {
        sat2 = 0;
        a2 = Bus(
          activate: sat2,
          hor_length: -50,
          ver_length1: -40,
          ver_length2: -40,
          dy: -40,
        );
        nand1_output = nand1.activation(a1.activate, a2.activate);
        a8 = Bus(
          activate: nand1_output,
          hor_length: 140,
          ver_length1: 40,
          ver_length2: 20,
        );
        and1_output = and1.activation(a8.activate, a10.activate);
        a11 = Bus(
          activate: and1_output,
          hor_length: 150,
          ver_length1: 15,
          ver_length2: 20,
        );
        nor2_output = nor2.activation(a11.activate, a12.activate);
        a13 = Bus(
          activate: nor2_output,
          hor_length: 0,
          ver_length1: 45,
          ver_length2: 0,
          dx: -2.5,
          dy: -15,
        );
        no3_output = no3.activation(a13.activate);
        a14 = Bus(
          activate: no3_output,
          hor_length: 0,
          ver_length1: 40,
          ver_length2: 0,
          dy: -10,
        );
      } else {
        sat2 = 1;
        a2 = Bus(
          activate: sat2,
          hor_length: -50,
          ver_length1: -40,
          ver_length2: -40,
          dy: -40,
        );
        nand1_output = nand1.activation(a1.activate, a2.activate);
        a8 = Bus(
          activate: nand1_output,
          hor_length: 140,
          ver_length1: 40,
          ver_length2: 20,
        );
        and1_output = and1.activation(a8.activate, a10.activate);
        a11 = Bus(
          activate: and1_output,
          hor_length: 150,
          ver_length1: 15,
          ver_length2: 20,
        );
        nor2_output = nor2.activation(a11.activate, a12.activate);
        a13 = Bus(
          activate: nor2_output,
          hor_length: 0,
          ver_length1: 45,
          ver_length2: 0,
          dx: -2.5,
          dy: -15,
        );
        no3_output = no3.activation(a13.activate);
        a14 = Bus(
          activate: no3_output,
          hor_length: 0,
          ver_length1: 40,
          ver_length2: 0,
          dy: -10,
        );
      }
      if (a14.activate == 1) {
        light = LED(
          x: a14.activate,
          y: 18,
        );
      } else {
        light = LED(
          x: a14.activate,
          y: 18,
        );
      }
    });
  }

  void test3() {
    setState(() {
           if(moves!=0){
moves-=1;
v = LevelHead2("18", level18(),mov: moves,);
}
      if (sat3 == 1) {
        sat3 = 0;
        a3 = Bus(
          activate: sat3,
          ver_length1: 0,
          ver_length2: 25,
        );
        or1_output = or1.activation(a3.activate, a4.activate);
        a9 = Bus(
          activate: or1_output,
          hor_length: 0,
          ver_length1: 50,
          ver_length2: 0,
          dy: -10,
          dx: -2.5,
        );
        no2_output = no2.activation(a9.activate);
        a10 = Bus(
          activate: no2_output,
          hor_length: -140,
          ver_length1: -15,
          ver_length2: -15,
          dx: 2.5,
        );
        and1_output = and1.activation(a8.activate, a10.activate);
        a11 = Bus(
          activate: and1_output,
          hor_length: 150,
          ver_length1: 15,
          ver_length2: 20,
        );
        nor2_output = nor2.activation(a11.activate, a12.activate);
        a13 = Bus(
          activate: nor2_output,
          hor_length: 0,
          ver_length1: 45,
          ver_length2: 0,
          dx: -2.5,
          dy: -15,
        );
        no3_output = no3.activation(a13.activate);
        a14 = Bus(
          activate: no3_output,
          hor_length: 0,
          ver_length1: 40,
          ver_length2: 0,
          dy: -10,
        );
      } else {
        sat3 = 1;
        a3 = Bus(
          activate: sat3,
          ver_length1: 0,
          ver_length2: 25,
        );
        or1_output = or1.activation(a3.activate, a4.activate);
        a9 = Bus(
          activate: or1_output,
          hor_length: 0,
          ver_length1: 50,
          ver_length2: 0,
          dy: -10,
          dx: -2.5,
        );
        no2_output = no2.activation(a9.activate);
        a10 = Bus(
          activate: no2_output,
          hor_length: -140,
          ver_length1: -15,
          ver_length2: -15,
          dx: 2.5,
        );
        and1_output = and1.activation(a8.activate, a10.activate);
        a11 = Bus(
          activate: and1_output,
          hor_length: 150,
          ver_length1: 15,
          ver_length2: 20,
        );
        nor2_output = nor2.activation(a11.activate, a12.activate);
        a13 = Bus(
          activate: nor2_output,
          hor_length: 0,
          ver_length1: 45,
          ver_length2: 0,
          dx: -2.5,
          dy: -15,
        );
        no3_output = no3.activation(a13.activate);
        a14 = Bus(
          activate: no3_output,
          hor_length: 0,
          ver_length1: 40,
          ver_length2: 0,
          dy: -10,
        );
      }
      if (a14.activate == 1) {
        light = LED(
          x: a14.activate,
          y: 18,
        );
      } else {
        light = LED(
          x: a14.activate,
          y: 18,
        );
      }
    });
  }

  void test4() {
    setState(() {
           if(moves!=0){
moves-=1;
v = LevelHead2("18", level18(),mov: moves,);
}
      if (sat4 == 1) {
        sat4 = 0;
        a4 = Bus(
          activate: sat4,
          hor_length: -50,
          ver_length1: -25,
          ver_length2: -0,
        );
        or1_output = or1.activation(a3.activate, a4.activate);
        a9 = Bus(
          activate: or1_output,
          hor_length: 0,
          ver_length1: 50,
          ver_length2: 0,
          dy: -10,
          dx: -2.5,
        );
        no2_output = no2.activation(a9.activate);
        a10 = Bus(
          activate: no2_output,
          hor_length: -140,
          ver_length1: -15,
          ver_length2: -15,
          dx: 2.5,
        );
        and1_output = and1.activation(a8.activate, a10.activate);
        a11 = Bus(
          activate: and1_output,
          hor_length: 150,
          ver_length1: 15,
          ver_length2: 20,
        );
        nor2_output = nor2.activation(a11.activate, a12.activate);
        a13 = Bus(
          activate: nor2_output,
          hor_length: 0,
          ver_length1: 45,
          ver_length2: 0,
          dx: -2.5,
          dy: -15,
        );
        no3_output = no3.activation(a13.activate);
        a14 = Bus(
          activate: no3_output,
          hor_length: 0,
          ver_length1: 40,
          ver_length2: 0,
          dy: -10,
        );
      } else {
        sat4 = 1;
        a4 = Bus(
          activate: sat4,
          hor_length: -50,
          ver_length1: -25,
          ver_length2: -0,
        );
        or1_output = or1.activation(a3.activate, a4.activate);
        a9 = Bus(
          activate: or1_output,
          hor_length: 0,
          ver_length1: 50,
          ver_length2: 0,
          dy: -10,
          dx: -2.5,
        );
        no2_output = no2.activation(a9.activate);
        a10 = Bus(
          activate: no2_output,
          hor_length: -140,
          ver_length1: -15,
          ver_length2: -15,
          dx: 2.5,
        );
        and1_output = and1.activation(a8.activate, a10.activate);
        a11 = Bus(
          activate: and1_output,
          hor_length: 150,
          ver_length1: 15,
          ver_length2: 20,
        );
        nor2_output = nor2.activation(a11.activate, a12.activate);
        a13 = Bus(
          activate: nor2_output,
          hor_length: 0,
          ver_length1: 45,
          ver_length2: 0,
          dx: -2.5,
          dy: -15,
        );
        no3_output = no3.activation(a13.activate);
        a14 = Bus(
          activate: no3_output,
        );
      }
      if (a14.activate == 1) {
        light = LED(
          x: a14.activate,
          y: 18,
        );
      } else {
        light = LED(
          x: a14.activate,
          y: 18,
        );
      }
    });
  }

  void test5() {
    setState(() {
           if(moves!=0){
moves-=1;
v = LevelHead2("18", level18(),mov: moves,);
}
      if (sat5 == 1) {
        sat5 = 0;
        a5 = Bus(
          activate: sat5,
          hor_length: 0,
          ver_length1: 35,
          ver_length2: 0,
          dy: -35,
        );
        no1_output = no1.activation(a5.activate);
        a6 = Bus(
          activate: no1_output,
          hor_length: 55,
          ver_length1: 45,
          ver_length2: 47,
        );
        nor1_output = nor1.activation(a6.activate, a7.activate);
        a12 = Bus(
          activate: nor1_output,
          hor_length: -290,
          ver_length1: -40,
          ver_length2: -20,
          dy: 20,
        );
        nor2_output = nor2.activation(a11.activate, a12.activate);
        a13 = Bus(
          activate: nor2_output,
          hor_length: 0,
          ver_length1: 45,
          ver_length2: 0,
          dx: -2.5,
          dy: -15,
        );
        no3_output = no3.activation(a13.activate);
        a14 = Bus(
          activate: no3_output,
          hor_length: 0,
          ver_length1: 40,
          ver_length2: 0,
          dy: -10,
        );
      } else {
        sat5 = 1;
        a5 = Bus(
          activate: sat5,
          hor_length: 0,
          ver_length1: 35,
          ver_length2: 0,
          dy: -35,
        );
        no1_output = no1.activation(a5.activate);
        a6 = Bus(
          activate: no1_output,
          hor_length: 55,
          ver_length1: 45,
          ver_length2: 47,
        );
        nor1_output = nor1.activation(a6.activate, a7.activate);
        a12 = Bus(
          activate: nor1_output,
          hor_length: -290,
          ver_length1: -40,
          ver_length2: -20,
          dy: 20,
        );
        nor2_output = nor2.activation(a11.activate, a12.activate);
        a13 = Bus(
          activate: nor2_output,
          hor_length: 0,
          ver_length1: 45,
          ver_length2: 0,
          dx: -2.5,
          dy: -15,
        );
        no3_output = no3.activation(a13.activate);
        a14 = Bus(
          activate: no3_output,
          hor_length: 0,
          ver_length1: 40,
          ver_length2: 0,
          dy: -10,
        );
      }
      if (a14.activate == 1) {
        light = LED(
          x: a14.activate,
          y: 18,
        );
      } else {
        light = LED(
          x: a14.activate,
          y: 18,
        );
      }
    });
  }

  void test6() {
    setState(() {
           if(moves!=0){
moves-=1;
v = LevelHead2("18", level18(),mov: moves,);
}
      if (sat6 == 1) {
        sat6 = 0;
        a7 = Bus(
          activate: sat6,
          hor_length: -70,
          ver_length1: -80,
          ver_length2: -100,
          dx: 2.5,
          dy: -100,
        );
        nor1_output = nor1.activation(a6.activate, a7.activate);
        a12 = Bus(
          activate: nor1_output,
          hor_length: -290,
          ver_length1: -40,
          ver_length2: -20,
          dy: 20,
        );
        nor2_output = nor2.activation(a11.activate, a12.activate);
        a13 = Bus(
          activate: nor2_output,
          hor_length: 0,
          ver_length1: 45,
          ver_length2: 0,
          dx: -2.5,
          dy: -15,
        );
        no3_output = no3.activation(a13.activate);
        a14 = Bus(
          activate: no3_output,
          hor_length: 0,
          ver_length1: 40,
          ver_length2: 0,
          dy: -10,
        );
      } else {
        sat6 = 1;
        a7 = Bus(
          activate: sat6,
          hor_length: -70,
          ver_length1: -80,
          ver_length2: -100,
          dx: 2.5,
          dy: -100,
        );
        nor1_output = nor1.activation(a6.activate, a7.activate);
        a12 = Bus(
          activate: nor1_output,
          hor_length: -290,
          ver_length1: -40,
          ver_length2: -20,
          dy: 20,
        );
        nor2_output = nor2.activation(a11.activate, a12.activate);
        a13 = Bus(
          activate: nor2_output,
          hor_length: 0,
          ver_length1: 45,
          ver_length2: 0,
          dx: -2.5,
          dy: -15,
        );
        no3_output = no3.activation(a13.activate);
        a14 = Bus(
          activate: no3_output,
          hor_length: 0,
          ver_length1: 40,
          ver_length2: 0,
          dy: -10,
        );
      }
      if (a14.activate == 1) {
        light = LED(
          x: a14.activate,
          y: 18,
        );
      } else {
        light = LED(
          x: a14.activate,
          y: 18,
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
          height: 60,
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
            a14.show(),
            SizedBox(
              height: 20,
            ),
            no3,
            a13.show(),
            SizedBox(
              height: 20,
            ),
            nor2,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    a11.show(),
                    and1,
                    Row(
                      children: [
                        Column(
                          children: [
                            a8.show(),
                            SizedBox(
                              height: 30,
                            ),
                            nand1,
                            SizedBox(
                              height: 70,
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
                            or1,
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
                    nor1,
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
                              height: 20,
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
                              height: 130,
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
