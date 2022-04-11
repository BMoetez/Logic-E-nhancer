import 'package:flutter/material.dart';
import '../classes/LED2.dart';
import '../classes/bus.dart';
import '../classes/or_gate.dart';
import '../classes/level_head2.dart';
import '../classes/no_gate.dart';
import '../classes/and_gate.dart';
import '../classes/Nand_gate.dart';
import 'dart:ui' as ui;

int sat1 = 1;
int sat2 = 1;
int sat3 = 0;
int sat4 = 0;
int sat5 = 0;
int sat6 = 1;
LevelHead2 v = LevelHead2("10", level10());
or_gate or1 = or_gate(height: 70, width: 70);
or_gate or2 = or_gate(height: 70, width: 70);
and_gate and1 = and_gate(height: 70, width: 70);
and_gate and2 = and_gate(height: 70, width: 70);
no_gate no1 = no_gate(height: 50, width: 50);
no_gate no2 = no_gate(height: 50, width: 50);
Nand_gate nand = Nand_gate(height: 70, width: 70,rotation: 3);
int or1_output = or1.activation(a1.activate, a2.activate);
int or2_output = or2.activation(a3.activate, a4.activate);
int and1_output = and1.activation(a6.activate, a7.activate);
int and2_output = and2.activation(a8.activate, a10.activate);
int no1_output = no1.activation(a5.activate);
int no2_output = no2.activation(a9.activate);
int nand_output = nand.activation(a11.activate, a12.activate);
Bus a1 = Bus(
  activate: sat1,
  hor_length: 40,
  ver_length1: 100,
  ver_length2: 50,
  dy: -100,
);
Bus a2 = Bus(
  activate: sat2,
  hor_length: -40,
  ver_length1: -50,
  ver_length2: -100,
  dy: -100,
);
Bus a3 = Bus(
  activate: sat3,
  hor_length: 40,
  ver_length1: 10,
  ver_length2: 30,
  dy: -10,
);
Bus a4 = Bus(
  activate: sat4,
  hor_length: -40,
  ver_length1: -30,
  ver_length2: -10,
  dy: -10,
);
Bus a5 = Bus(
  activate: sat5,
  hor_length: 0,
  ver_length1: 70,
  ver_length2: 0,
  dy: -70,
  dx: -2.5,
);
Bus a6 = Bus(
  activate: no1_output,
  hor_length: 40,
  ver_length1: 30,
  ver_length2: 95,
  dy: -20,
);
Bus a7 = Bus(
  activate: sat6,
  hor_length: -40,
  ver_length1: -95,
  ver_length2: -160,
  dy: -160,
  dx: 2.5,
);
Bus a8 = Bus(
  activate: or1_output,
  hor_length: 130,
  ver_length1: 30,
  ver_length2: 35,
  dy: -20,
  dx: -2.5,
);
Bus a9 = Bus(
  activate: or2_output,
  hor_length: 0,
  ver_length1: 50,
  ver_length2: 0,
  dy: -40,
  dx: -2.5,
);
Bus a10 = Bus(
  activate: no2_output,
  hor_length: -130,
  ver_length1: -35,
  ver_length2: -30,
  dy: -20,
  dx: 2.5,
);
Bus a11 = Bus(
  activate: and2_output,
  hor_length: 130,
  ver_length1: 20,
  ver_length2: 20,
  dy: -5,
  dx: -2.5,
);
Bus a12 = Bus(
  activate: and1_output,
  hor_length: -265,
  ver_length1: -20,
  ver_length2: -20,
  dy: -10,
);
Bus a13 = Bus(
  activate: nand_output,
  hor_length: 0,
  ver_length1: 40,
  ver_length2: 0,
  dx: -2.5,
  dy: -10,
);
LED light = LED(x: a13.activate);

class level10 extends StatefulWidget {
  const level10({Key? key}) : super(key: key);

  @override
  State<level10> createState() => _level10State();
}

class _level10State extends State<level10> {
  var buttons = [
    "assets/images/button/button0.png",
    "assets/images/button/button1.png"
  ];

  void initState() {
    // TODO: implement initState
    WidgetsBinding.instance?.addPostFrameCallback((_) => Overlay.of(context)?.insert(_getEntry(context)));
  }
  void test1() {
    setState(() {
      if (sat1 == 1) {
        sat1 = 0;
        a1 = Bus(
          activate: sat1,
          hor_length: 40,
          ver_length1: 100,
          ver_length2: 50,
          dy: -100,
        );
        or1_output = or1.activation(a1.activate, a2.activate);
        a8 = Bus(
          activate: or1_output,
          hor_length: 130,
          ver_length1: 30,
          ver_length2: 35,
          dy: -20,
          dx: -2.5,
        );
        and2_output = and2.activation(a8.activate, a10.activate);
        a11 = Bus(
          activate: and2_output,
          hor_length: 130,
          ver_length1: 20,
          ver_length2: 20,
          dy: -5,
          dx: -2.5,
        );
        nand_output = nand.activation(a11.activate, a12.activate);
        a13 = Bus(
          activate: nand_output,
          hor_length: 0,
          ver_length1: 40,
          ver_length2: 0,
          dx: -2.5,
          dy: -10,
        );
      } else {
        sat1 = 1;
        a1 = Bus(
          activate: sat1,
          hor_length: 40,
          ver_length1: 100,
          ver_length2: 50,
          dy: -100,
        );
        or1_output = or1.activation(a1.activate, a2.activate);
        a8 = Bus(
          activate: or1_output,
          hor_length: 130,
          ver_length1: 30,
          ver_length2: 35,
          dy: -20,
          dx: -2.5,
        );
        and2_output = and2.activation(a8.activate, a10.activate);
        a11 = Bus(
          activate: and2_output,
          hor_length: 130,
          ver_length1: 20,
          ver_length2: 20,
          dy: -5,
          dx: -2.5,
        );
        nand_output = nand.activation(a11.activate, a12.activate);
        a13 = Bus(
          activate: nand_output,
          hor_length: 0,
          ver_length1: 40,
          ver_length2: 0,
          dx: -2.5,
          dy: -10,
        );
      }
      if (a13.activate == 1) {
        light = LED(x: a13.activate);
      } else {
        light = LED(x: a13.activate);
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
          ver_length1: -50,
          ver_length2: -100,
          dy: -100,
        );
        or1_output = or1.activation(a1.activate, a2.activate);
        a8 = Bus(
          activate: or1_output,
          hor_length: 130,
          ver_length1: 30,
          ver_length2: 35,
          dy: -20,
          dx: -2.5,
        );
        and2_output = and2.activation(a8.activate, a10.activate);
        a11 = Bus(
          activate: and2_output,
          hor_length: 130,
          ver_length1: 20,
          ver_length2: 20,
          dy: -5,
          dx: -2.5,
        );
        nand_output = nand.activation(a11.activate, a12.activate);
        a13 = Bus(
          activate: nand_output,
          hor_length: 0,
          ver_length1: 40,
          ver_length2: 0,
          dx: -2.5,
          dy: -10,        );
      } else {
        sat2 = 1;
        a2 = Bus(
          activate: sat2,
          hor_length: -40,
          ver_length1: -50,
          ver_length2: -100,
          dy: -100,
        );
        or1_output = or1.activation(a1.activate, a2.activate);
        a8 = Bus(
          activate: or1_output,
          hor_length: 130,
          ver_length1: 30,
          ver_length2: 35,
          dy: -20,
          dx: -2.5,
        );
        and2_output = and2.activation(a8.activate, a10.activate);
        a11 = Bus(
          activate: and2_output,
          hor_length: 130,
          ver_length1: 20,
          ver_length2: 20,
          dy: -5,
          dx: -2.5,
        );
        nand_output = nand.activation(a11.activate, a12.activate);
        a13 = Bus(
          activate: nand_output,
          hor_length: 0,
          ver_length1: 40,
          ver_length2: 0,
          dx: -2.5,
          dy: -10,
        );
      }
      if (a13.activate == 1) {
        light = LED(x: a13.activate);
      } else {
        light = LED(x: a13.activate);
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
          ver_length1: 10,
          ver_length2: 30,
          dy: -10,
        );
        or2_output = or2.activation(a3.activate, a4.activate);
        a9 = Bus(
          activate: or2_output,
          hor_length: 0,
          ver_length1: 50,
          ver_length2: 0,
          dy: -40,
          dx: -2.5,
        );
        no2_output = no2.activation(a9.activate);
        a10 = Bus(
          activate: no2_output,
          hor_length: -130,
          ver_length1: -35,
          ver_length2: -30,
          dy: -20,
          dx: 2.5,
        );
        and2_output = and2.activation(a8.activate, a10.activate);
        a11 = Bus(
          activate: and2_output,
          hor_length: 130,
          ver_length1: 20,
          ver_length2: 20,
          dy: -5,
          dx: -2.5,
        );
        nand_output = nand.activation(a11.activate, a12.activate);
        a13 = Bus(
          activate: nand_output,
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
          hor_length: 40,
          ver_length1: 10,
          ver_length2: 30,
          dy: -10,
        );
        or2_output = or2.activation(a3.activate, a4.activate);
        a9 = Bus(
          activate: or2_output,
          hor_length: 0,
          ver_length1: 50,
          ver_length2: 0,
          dy: -40,
          dx: -2.5,
        );
        no2_output = no2.activation(a9.activate);
        a10 = Bus(
          activate: no2_output,
          hor_length: -130,
          ver_length1: -35,
          ver_length2: -30,
          dy: -20,
          dx: 2.5,
        );
        and2_output = and2.activation(a8.activate, a10.activate);
        a11 = Bus(
          activate: and2_output,
          hor_length: 130,
          ver_length1: 20,
          ver_length2: 20,
          dy: -5,
          dx: -2.5,
        );
        nand_output = nand.activation(a11.activate, a12.activate);
        a13 = Bus(
          activate: nand_output,
          hor_length: 0,
          ver_length1: 40,
          ver_length2: 0,
          dx: -2.5,
          dy: -10,
        );
      }
      if (a13.activate == 1) {
        light = LED(x: a13.activate);
      } else {
        light = LED(x: a13.activate);
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
          ver_length1: -30,
          ver_length2: -10,
          dy: -10,);
        or2_output = or2.activation(a3.activate, a4.activate);
        a9 = Bus(
          activate: or2_output,
          hor_length: 0,
          ver_length1: 50,
          ver_length2: 0,
          dy: -40,
          dx: -2.5,
        );
        no2_output = no2.activation(a9.activate);
        a10 = Bus(
          activate: no2_output,
          hor_length: -130,
          ver_length1: -35,
          ver_length2: -30,
          dy: -20,
          dx: 2.5,
        );
        and2_output = and2.activation(a8.activate, a10.activate);
        a11 = Bus(
          activate: and2_output,
          hor_length: 130,
          ver_length1: 20,
          ver_length2: 20,
          dy: -5,
          dx: -2.5,
        );
        nand_output = nand.activation(a11.activate, a12.activate);
        a13 = Bus(
          activate: nand_output,
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
          hor_length: -40,
          ver_length1: -30,
          ver_length2: -10,
          dy: -10,
        );
        or2_output = or2.activation(a3.activate, a4.activate);
        a9 = Bus(
          activate: or2_output,
          hor_length: 0,
          ver_length1: 50,
          ver_length2: 0,
          dy: -40,
          dx: -2.5,
        );
        no2_output = no2.activation(a9.activate);
        a10 = Bus(
          activate: no2_output,
          hor_length: -130,
          ver_length1: -35,
          ver_length2: -30,
          dy: -20,
          dx: 2.5,
        );
        and2_output = and2.activation(a8.activate, a10.activate);
        a11 = Bus(
          activate: and2_output,
          hor_length: 130,
          ver_length1: 20,
          ver_length2: 20,
          dy: -5,
          dx: -2.5,
        );
        nand_output = nand.activation(a11.activate, a12.activate);
        a13 = Bus(
          activate: nand_output,
          hor_length: 0,
          ver_length1: 40,
          ver_length2: 0,
          dx: -2.5,
          dy: -10,
        );
      }
      if (a13.activate == 1) {
        light = LED(x: a13.activate);
      } else {
        light = LED(x: a13.activate);
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
          ver_length1: 70,
          ver_length2: 0,
          dy: -70,
          dx: -2.5,
        );
        no1_output = no1.activation(a5.activate);
        a6 = Bus(
          activate: no1_output,
          hor_length: 40,
          ver_length1: 30,
          ver_length2: 95,
          dy: -20,
        );
        and1_output = and1.activation(a6.activate, a7.activate);
        a12 = Bus(
          activate: and1_output,
          hor_length: -265,
          ver_length1: -20,
          ver_length2: -20,
          dy: -10,
        );
        nand_output = nand.activation(a11.activate, a12.activate);
        a13 = Bus(
          activate: nand_output,
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
          ver_length1: 70,
          ver_length2: 0,
          dy: -70,
          dx: -2.5,
        );
        no1_output = no1.activation(a5.activate);
        a6 = Bus(
          activate: no1_output,
          hor_length: 40,
          ver_length1: 30,
          ver_length2: 95,
          dy: -20,
        );
        and1_output = and1.activation(a6.activate, a7.activate);
        a12 = Bus(
          activate: and1_output,
          hor_length: -265,
          ver_length1: -20,
          ver_length2: -20,
          dy: -10,
        );
        nand_output = nand.activation(a11.activate, a12.activate);
        a13 = Bus(
          activate: nand_output,
          hor_length: 0,
          ver_length1: 40,
          ver_length2: 0,
          dx: -2.5,
          dy: -10,
        );
      }
      if (a13.activate == 1) {
        light = LED(x: a13.activate);
      } else {
        light = LED(x: a13.activate);
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
          ver_length1: -95,
          ver_length2: -160,
          dy: -160,
          dx: 2.5,
);and1_output = and1.activation(a6.activate, a7.activate);
a12 = Bus(
  activate: and1_output,
  hor_length: -265,
  ver_length1: -20,
  ver_length2: -20,
  dy: -10,
);nand_output = nand.activation(a11.activate, a12.activate);
a13 = Bus(
  activate: nand_output,
  hor_length: 0,
  ver_length1: 40,
  ver_length2: 0,
  dx: -2.5,
  dy: -10,
);
      } else {   sat6 = 1;
        a7 = Bus(
          activate: sat6,
          hor_length: -40,
          ver_length1: -95,
          ver_length2: -160,
          dy: -160,
          dx: 2.5,
);and1_output = and1.activation(a6.activate, a7.activate);
a12 = Bus(
  activate: and1_output,
  hor_length: -265,
  ver_length1: -20,
  ver_length2: -20,
  dy: -10,
);nand_output = nand.activation(a11.activate, a12.activate);
a13 = Bus(
  activate: nand_output,
  hor_length: 0,
  ver_length1: 40,
  ver_length2: 0,
  dx: -2.5,
  dy: -10,
);}
      if (a13.activate == 1) {
        light = LED(x: a13.activate);
      } else {
        light = LED(x: a13.activate);
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
            light,a13.show(),
SizedBox(height: 20,),nand.show(),SizedBox(height: 20,),
Row(mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,children: [Column(children: [a11.show(),and2.show(),SizedBox(height: 40,),Row(children: [Column(children: [a8.show(),or1.show(),SizedBox(height: 130,),Row(children: [Column(children: [a1.show(),button1()],),Column(children: [a2.show(),button2()],)],)],),SizedBox(width: 100,),Column(children: [a10.show(),no2.show(),SizedBox(height: 30,),a9.show(),or2.show(),SizedBox(height: 20,),Row(children: [Column(children: [a3.show(),button3()],),SizedBox(width: 0,),Column(children: [a4.show(),button4()],)],)],)],)],),SizedBox(width: 100,),Column(children: [a12.show(),and1.show(),SizedBox(height: 100,),Row(children: [Column(children: [a6.show(),no1.show(),SizedBox(height: 60,),a5.show(),button5()],),Column(children: [SizedBox(height: 140,),a7.show(),button6()],)],)],)],)],
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
                        Image.asset("../../assets/images/nand_unlocked.png",scale: 0.5,),
                        TextButton(onPressed: (){entry.remove();}, child: Text("GO",style: TextStyle(fontSize: 50),))
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
