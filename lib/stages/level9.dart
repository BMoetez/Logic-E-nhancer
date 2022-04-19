import 'package:flutter/material.dart';
import '../classes/LED2.dart';
import '../classes/bus.dart';
import '../classes/or_gate.dart';
import '../classes/level_head2.dart';
import '../classes/no_gate.dart';
import '../classes/and_gate.dart';
LevelHead2 v = LevelHead2("9", level9());
no_gate no1 = no_gate(height: 50, width: 50);
no_gate no2 = no_gate(height: 50, width: 50);
no_gate no3 = no_gate(height: 50, width: 50);
or_gate or1 = or_gate(height: 70, width: 70);
or_gate or2 = or_gate(height: 70, width: 70);
or_gate or3 = or_gate(height: 70, width: 70);
or_gate or4 = or_gate(height: 70, width: 70);
and_gate and1 = and_gate(height: 70, width: 70);
int sat1 = 1;
int sat2 = 0;
int sat3 = 0;
int sat4 = 0;
int sat5 = 0;
int sat6 = 0;

int no1_output = no1.activation(a5.activate);
int no2_output = no2.activation(a8.activate);
int no3_output = no3.activation(a10.activate);
int or1_output = or1.activation(a1.activate, a2.activate);
int or2_output = or2.activation(a6.activate, a7.activate);
int or3_output = or3.activation(a9.activate, a11.activate);
int or4_output = or4.activation(a12.activate, a13.activate);
int and1_output = and1.activation(a3.activate, a4.activate);
Bus a1 = Bus(
  activate: sat1,
  hor_length: 35,
  ver_length1: 50,
  ver_length2: 70,
  dy: -50,
);
Bus a2 = Bus(
  activate: sat2,
  hor_length: -40,
  ver_length1: -70,
  ver_length2: -50,
  dx: 2.5,
  dy: -50,
);
Bus a3 = Bus(
  activate: sat3,
  hor_length: 40,
  ver_length1: 70,
  ver_length2: 45,
  dx: -2.5,
  dy: -70,
);
Bus a4 = Bus(
  activate: sat4,
  hor_length: -40,
  ver_length1: -45,
  ver_length2: -70,
  dx: 2.5,
  dy: -70,
);
Bus a5 = Bus(
  activate: sat5,
  hor_length: 0,
  ver_length1: 15,
  ver_length2: 0,
  dy: -15,
  dx: -2.5,
);
Bus a6 = Bus(
  activate: no1_output,
  hor_length: 30,
  ver_length1: 10,
  ver_length2: 20,
  dy: 0,
);
Bus a7 = Bus(
  activate: sat6,
  hor_length: -40,
  ver_length1: -20,
  ver_length2: -80,
  dy: -80,
  dx: 2.5,
);
Bus a8 = Bus(
  activate: or1_output,
  hor_length: 0,
  ver_length1: 70,
  ver_length2: 0,
  dx: -2.5,
  dy: -60,
);
Bus a9 = Bus(
  activate: and1_output,
  hor_length: 130,
  ver_length1: 65,
  ver_length2: 20,
  dy: -55,
  dx: -2.5,
);
Bus a10 = Bus(
  activate: or2_output,
  hor_length: 0,
  ver_length1: 30,
  ver_length2: 0,
  dy: -15,
  dx: -2.5,
);
Bus a11 = Bus(
  activate: no3_output,
  hor_length: -130,
  ver_length1: -20,
  ver_length2: -10,
  dx: 2.5,
);
Bus a12 = Bus(
  activate: no2_output,
  hor_length: 260,
  ver_length1: 35,
  ver_length2: 20,
  dy: -25,
);
Bus a13 = Bus(
  activate: or3_output,
  hor_length: -130,
  ver_length1: -20,
  ver_length2: -30,
  dy: -20,
);
Bus a14 = Bus(
  activate: or4_output,
  hor_length: 0,
  ver_length1: 60,
  ver_length2: 0,
  dx: -2.5,
  dy: -10,
);
LED light = LED(x: a14.activate,y: 9,);
void set(){
sat1 = 1;
 sat2 = 0;
sat3 = 0;
 sat4 = 0;
 sat5 = 0;
 sat6 = 0;
a1 = Bus(
  activate: sat1,
  hor_length: 35,
  ver_length1: 50,
  ver_length2: 70,
  dy: -50,
);
a2 = Bus(
  activate: sat2,
  hor_length: -40,
  ver_length1: -70,
  ver_length2: -50,
  dx: 2.5,
  dy: -50,
);
a3 = Bus(
  activate: sat3,
  hor_length: 40,
  ver_length1: 70,
  ver_length2: 45,
  dx: -2.5,
  dy: -70,
);
a4 = Bus(
  activate: sat4,
  hor_length: -40,
  ver_length1: -45,
  ver_length2: -70,
  dx: 2.5,
  dy: -70,
);
a5 = Bus(
  activate: sat5,
  hor_length: 0,
  ver_length1: 15,
  ver_length2: 0,
  dy: -15,
  dx: -2.5,
);no1_output = no1.activation(a5.activate);
a6 = Bus(
  activate: no1_output,
  hor_length: 30,
  ver_length1: 10,
  ver_length2: 20,
  dy: 0,
);
a7 = Bus(
  activate: sat6,
  hor_length: -40,
  ver_length1: -20,
  ver_length2: -80,
  dy: -80,
  dx: 2.5,
);or1_output = or1.activation(a1.activate, a2.activate);
a8 = Bus(
  activate: or1_output,
  hor_length: 0,
  ver_length1: 70,
  ver_length2: 0,
  dx: -2.5,
  dy: -60,
);and1_output = and1.activation(a3.activate, a4.activate);
a9 = Bus(
  activate: and1_output,
  hor_length: 130,
  ver_length1: 65,
  ver_length2: 20,
  dy: -55,
  dx: -2.5,
); or2_output = or2.activation(a6.activate, a7.activate);
a10 = Bus(
  activate: or2_output,
  hor_length: 0,
  ver_length1: 30,
  ver_length2: 0,
  dy: -15,
  dx: -2.5,
); no3_output = no3.activation(a10.activate);
a11 = Bus(
  activate: no3_output,
  hor_length: -130,
  ver_length1: -20,
  ver_length2: -10,
  dx: 2.5,
);no2_output = no2.activation(a8.activate);
a12 = Bus(
  activate: no2_output,
  hor_length: 260,
  ver_length1: 35,
  ver_length2: 20,
  dy: -25,
);or3_output = or3.activation(a9.activate, a11.activate);
a13 = Bus(
  activate: or3_output,
  hor_length: -130,
  ver_length1: -20,
  ver_length2: -30,
  dy: -20,
);or4_output = or4.activation(a12.activate, a13.activate);
a14 = Bus(
  activate: or4_output,
  hor_length: 0,
  ver_length1: 60,
  ver_length2: 0,
  dx: -2.5,
  dy: -10,
);
light = LED(x: a14.activate,y: 9,);
}
class level9 extends StatefulWidget {
  const level9({Key? key}) : super(key: key);

  @override
  State<level9> createState() => _level9State();
}

class _level9State extends State<level9> {
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
      if (sat1 == 1) {
        sat1 = 0;
        a1 = Bus(
          activate: sat1,
          hor_length: 35,
          ver_length1: 50,
          ver_length2: 70,
          dy: -50,
);
        or1_output = or1.activation(a1.activate, a2.activate);
        a8 = Bus(
          activate: or1_output,
          hor_length: 0,
          ver_length1: 70,
          ver_length2: 0,
          dx: -2.5,
          dy: -60,
        );
        no2_output = no2.activation(a8.activate);
        a12 = Bus(
          activate: no2_output,
          hor_length: 260,
          ver_length1: 35,
          ver_length2: 20,
          dy: -25,
        );
        or4_output = or4.activation(a12.activate, a13.activate);
        a14 = Bus(
          activate: or4_output,
          hor_length: 0,
          ver_length1: 60,
          ver_length2: 0,
          dx: -2.5,
          dy: -10,
        );
      } else {
        sat1 = 1;
        a1 = Bus(
          activate: sat1,
          hor_length: 35,
          ver_length1: 50,
          ver_length2: 70,
          dy: -50,
);
        or1_output = or1.activation(a1.activate, a2.activate);
        a8 = Bus(
          activate: or1_output,
          hor_length: 0,
          ver_length1: 70,
          ver_length2: 0,
          dx: -2.5,
          dy: -60,
        );
        no2_output = no2.activation(a8.activate);
        a12 = Bus(
          activate: no2_output,
          hor_length: 260,
          ver_length1: 35,
          ver_length2: 20,
          dy: -25,
        );
        or4_output = or4.activation(a12.activate, a13.activate);
        a14 = Bus(
          activate: or4_output,
          hor_length: 0,
          ver_length1: 60,
          ver_length2: 0,
          dx: -2.5,
          dy: -10,
        );
      }
      if (a14.activate == 1) {
        light = LED(x: a14.activate,y: 9,);
      } else {
        light = LED(x: a14.activate,y: 9,);
      }
    });
  }

  void test2() {
    setState(() {
      if (sat2 == 1) {
        sat2 = 0;
        a2 = Bus(
          activate: sat2,
          hor_length: -40,
          ver_length1: -70,
          ver_length2: -50,
          dx: 2.5,
          dy: -50,
        );
        or1_output = or1.activation(a1.activate, a2.activate);
        a8 = Bus(
          activate: or1_output,
          hor_length: 0,
          ver_length1: 70,
          ver_length2: 0,
          dx: -2.5,
          dy: -60,
        );
        no2_output = no2.activation(a8.activate);
        a12 = Bus(
          activate: no2_output,
          hor_length: 260,
          ver_length1: 35,
          ver_length2: 20,
          dy: -25,
        );
        or4_output = or4.activation(a12.activate, a13.activate);
        a14 = Bus(
          activate: or4_output,
          hor_length: 0,
          ver_length1: 60,
          ver_length2: 0,
          dx: -2.5,
          dy: -10,
        );
      } else {
        sat2 = 1;
        a2 = Bus(
          activate: sat2,
          hor_length: -40,
          ver_length1: -70,
          ver_length2: -50,
          dx: 2.5,
          dy: -50,
        );
        or1_output = or1.activation(a1.activate, a2.activate);
        a8 = Bus(
          activate: or1_output,
          hor_length: 0,
          ver_length1: 70,
          ver_length2: 0,
          dx: -2.5,
          dy: -60,
        );
        no2_output = no2.activation(a8.activate);
        a12 = Bus(
          activate: no2_output,
          hor_length: 260,
          ver_length1: 35,
          ver_length2: 20,
          dy: -25,
        );
        or4_output = or4.activation(a12.activate, a13.activate);
        a14 = Bus(
          activate: or4_output,
          hor_length: 0,
          ver_length1: 60,
          ver_length2: 0,
          dx: -2.5,
          dy: -10,
        );
      }
      if (a14.activate == 1) {
        light = LED(x: a14.activate,y: 9,);
      } else {
        light = LED(x: a14.activate,y: 9,);
      }
    });
  }

  void test3() {
    setState(() {
      if (sat3 == 1) {
        sat3 = 0;
        a3 = Bus(
          activate: sat3,
          hor_length: 40,
          ver_length1: 70,
          ver_length2: 45,
          dx: -2.5,
          dy: -70,
        );
        and1_output = and1.activation(a3.activate, a4.activate);
        a9 = Bus(
          activate: and1_output,
          hor_length: 130,
          ver_length1: 65,
          ver_length2: 20,
          dy: -55,
          dx: -2.5,
        );
        or3_output = or3.activation(a9.activate, a11.activate);
        a13 = Bus(
          activate: or3_output,
          hor_length: -130,
          ver_length1: -20,
          ver_length2: -30,
          dy: -20,
        );
        or4_output = or4.activation(a12.activate, a13.activate);
        a14 = Bus(
          activate: or4_output,
          hor_length: 0,
          ver_length1: 60,
          ver_length2: 0,
          dx: -2.5,
          dy: -10,
        );
      } else {
        sat3 = 1;
        a3 = Bus(
          activate: sat3,
          hor_length: 40,
          ver_length1: 70,
          ver_length2: 45,
          dx: -2.5,
          dy: -70,
        );
        and1_output = and1.activation(a3.activate, a4.activate);
        a9 = Bus(
          activate: and1_output,
          hor_length: 130,
          ver_length1: 65,
          ver_length2: 20,
          dy: -55,
          dx: -2.5,
        );
        or3_output = or3.activation(a9.activate, a11.activate);
        a13 = Bus(
          activate: or3_output,
          hor_length: -130,
          ver_length1: -20,
          ver_length2: -30,
          dy: -20,
        );
        or4_output = or4.activation(a12.activate, a13.activate);
        a14 = Bus(
          activate: or4_output,
          hor_length: 0,
          ver_length1: 60,
          ver_length2: 0,
          dx: -2.5,
          dy: -10,
        );
      }
      if (a14.activate == 1) {
        light = LED(x: a14.activate,y: 9,);
      } else {
        light = LED(x: a14.activate,y: 9,);
      }
    });
  }

  void test4() {
    setState(() {
      if (sat4 == 1) {
        sat4 = 0;
        a4 = Bus(
          activate: sat4,
          hor_length: -40,
          ver_length1: -45,
          ver_length2: -70,
          dx: 2.5,
          dy: -70,
        );
        and1_output = and1.activation(a3.activate, a4.activate);
        a9 = Bus(
          activate: and1_output,
          hor_length: 130,
          ver_length1: 65,
          ver_length2: 20,
          dy: -55,
          dx: -2.5,
        );
        or3_output = or3.activation(a9.activate, a11.activate);
        a13 = Bus(
          activate: or3_output,
          hor_length: -130,
          ver_length1: -20,
          ver_length2: -30,
          dy: -20,
        );
        or4_output = or4.activation(a12.activate, a13.activate);
        a14 = Bus(
          activate: or4_output,
          hor_length: 0,
          ver_length1: 60,
          ver_length2: 0,
          dx: -2.5,
          dy: -10,
        );
      } else {
        sat4 = 1;
        a4 = Bus(
          activate: sat4,
          hor_length: -40,
          ver_length1: -45,
          ver_length2: -70,
          dx: 2.5,
          dy: -70,
        );
        and1_output = and1.activation(a3.activate, a4.activate);
        a9 = Bus(
          activate: and1_output,
          hor_length: 130,
          ver_length1: 65,
          ver_length2: 20,
          dy: -55,
          dx: -2.5,
        );
        or3_output = or3.activation(a9.activate, a11.activate);
        a13 = Bus(
          activate: or3_output,
          hor_length: -130,
          ver_length1: -20,
          ver_length2: -30,
          dy: -20,
        );
        or4_output = or4.activation(a12.activate, a13.activate);
        a14 = Bus(
          activate: or4_output,
          hor_length: 0,
          ver_length1: 60,
          ver_length2: 0,
          dx: -2.5,
          dy: -10,
        );
      }
      if (a14.activate == 1) {
        light = LED(x: a14.activate,y: 9,);
      } else {
        light = LED(x: a14.activate,y: 9,);
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
          ver_length1: 15,
          ver_length2: 0,
          dy: -15,
          dx: -2.5,
        );
        no1_output = no1.activation(a5.activate);
        a6 = Bus(
          activate: no1_output,
          hor_length: 30,
          ver_length1: 10,
          ver_length2: 20,
          dy: 0,
        );
        or2_output = or2.activation(a6.activate, a7.activate);
        a10 = Bus(
          activate: or2_output,
          hor_length: 0,
          ver_length1: 30,
          ver_length2: 0,
          dy: -15,
          dx: -2.5,
        );
        no3_output = no3.activation(a10.activate);
        a11 = Bus(
          activate: no3_output,
          hor_length: -130,
          ver_length1: -20,
          ver_length2: -10,
          dx: 2.5,
        );
        or3_output = or3.activation(a9.activate, a11.activate);
        a13 = Bus(
          activate: or3_output,
          hor_length: -130,
          ver_length1: -20,
          ver_length2: -30,
          dy: -20,
        );
        or4_output = or4.activation(a12.activate, a13.activate);
        a14 = Bus(
          activate: or4_output,
          hor_length: 0,
          ver_length1: 60,
          ver_length2: 0,
          dx: -2.5,
          dy: -10,
        );
      } else {
        sat5 = 1;
        a5 = Bus(
          activate: sat5,
          hor_length: 0,
          ver_length1: 15,
          ver_length2: 0,
          dy: -15,
          dx: -2.5,
        );
        no1_output = no1.activation(a5.activate);
        a6 = Bus(
          activate: no1_output,
          hor_length: 30,
          ver_length1: 10,
          ver_length2: 20,
          dy: 0,
        );
        or2_output = or2.activation(a6.activate, a7.activate);
        a10 = Bus(
          activate: or2_output,
          hor_length: 0,
          ver_length1: 30,
          ver_length2: 0,
          dy: -15,
          dx: -2.5,
        );
        no3_output = no3.activation(a10.activate);
        a11 = Bus(
          activate: no3_output,
          hor_length: -130,
          ver_length1: -20,
          ver_length2: -10,
          dx: 2.5,
        );
        or3_output = or3.activation(a9.activate, a11.activate);
        a13 = Bus(
          activate: or3_output,
          hor_length: -130,
          ver_length1: -20,
          ver_length2: -30,
          dy: -20,
        );
        or4_output = or4.activation(a12.activate, a13.activate);
        a14 = Bus(
          activate: or4_output,
          hor_length: 0,
          ver_length1: 60,
          ver_length2: 0,
          dx: -2.5,
          dy: -10,
        );
      }
      if (a14.activate == 1) {
        light = LED(x: a14.activate,y: 9,);
      } else {
        light = LED(x: a14.activate,y: 9,);
      }
    });
  }

  void test6() {
    setState(() {
      if (sat6 == 1) {
        sat6 = 0;
        a7 = Bus(
          activate: sat6,
          hor_length: -40,
          ver_length1: -20,
          ver_length2: -80,
          dy: -80,
          dx: 2.5,
);or2_output = or2.activation(a6.activate, a7.activate);
a10 = Bus(
  activate: or2_output,
  hor_length: 0,
  ver_length1: 30,
  ver_length2: 0,
  dy: -15,
  dx: -2.5,
);no3_output = no3.activation(a10.activate);
a11 = Bus(
  activate: no3_output,
  hor_length: -130,
  ver_length1: -20,
  ver_length2: -10,
  dx: 2.5,
);or3_output = or3.activation(a9.activate, a11.activate);
a13 = Bus(
  activate: or3_output,
  hor_length: -130,
  ver_length1: -20,
  ver_length2: -30,
  dy: -20,
);or4_output = or4.activation(a12.activate, a13.activate);
a14 = Bus(
  activate: or4_output,
  hor_length: 0,
  ver_length1: 60,
  ver_length2: 0,
  dx: -2.5,
  dy: -10,
);
      } else {        sat6 = 1;
        a7 = Bus(
          activate: sat6,
          hor_length: -40,
          ver_length1: -20,
          ver_length2: -80,
          dy: -80,
          dx: 2.5,
);or2_output = or2.activation(a6.activate, a7.activate);
a10 = Bus(
  activate: or2_output,
  hor_length: 0,
  ver_length1: 30,
  ver_length2: 0,
  dy: -15,
  dx: -2.5,
);no3_output = no3.activation(a10.activate);
a11 = Bus(
  activate: no3_output,
  hor_length: -130,
  ver_length1: -20,
  ver_length2: -10,
  dx: 2.5,
);or3_output = or3.activation(a9.activate, a11.activate);
a13 = Bus(
  activate: or3_output,
  hor_length: -130,
  ver_length1: -20,
  ver_length2: -30,
  dy: -20,
);or4_output = or4.activation(a12.activate, a13.activate);
a14 = Bus(
  activate: or4_output,
  hor_length: 0,
  ver_length1: 60,
  ver_length2: 0,
  dx: -2.5,
  dy: -10,
);}
      if (a14.activate == 1) {
        light = LED(x: a14.activate,y: 9,);
      } else {
        light = LED(x: a14.activate,y: 9,);
      }
    });
  }

  Widget button1() {
    return FlatButton(
        onPressed: test1,
        child: Image.asset(
          buttons[sat1],
         height: 70, width: 70
        ));
  }

  Widget button2() {
    return FlatButton(
        onPressed: test2,
        child: Image.asset(
          buttons[sat2],
          height: 70, width: 70
        ));
  }

  Widget button3() {
    return FlatButton(
        onPressed: test3,
        child: Image.asset(
          buttons[sat3],
          height: 70, width: 70
        ));
  }

  Widget button4() {
    return FlatButton(
        onPressed: test4,
        child: Image.asset(
          buttons[sat4],
         height: 70, width: 70
        ));
  }
Widget button5() {
    return FlatButton(
        onPressed: test5,
        child: Image.asset(
          buttons[sat5],
          height: 70, width: 70
        ));
  }
Widget button6() {
    return FlatButton(
        onPressed: test6,
        child: Image.asset(
          buttons[sat6],
           height: 70, width: 70
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
            light,a14.show(),SizedBox(height: 40,),
          or4.show(),SizedBox(height: 20,),Row(mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,children: [Column(children: [a12.show(),no2.show(),SizedBox(height: 50,),a8.show(),or1.show(),SizedBox(height: 100,),Row(children: [Column(children: [a1.show(),button1()],),Column(children: [a2.show(),button2()],)],)],),SizedBox(width: 100,),Column(children: [a13.show(),or3.show(),Row(children: [Column(children: [SizedBox(height: 50,),a9.show(),and1.show(),SizedBox(height: 100,),Row(children: [Column(children: [a3.show(),button3()],),Column(children: [a4.show(),button4()],)],)],),SizedBox(width: 100,),Column(children: [a11.show(),no3.show(),a10.show(),or2.show(),Row(children: [Column(children: [a6.show(),no1.show(),a5.show(),button5()]),Column(children: [SizedBox(height: 80,),a7.show(),button6()],)],)],)],)],
              )],)],
        ));
  }
}
