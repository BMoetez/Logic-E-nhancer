import 'package:flutter/material.dart';
import '../classes/LED2.dart';
import '../classes/bus.dart';
import '../classes/level_head2.dart';
import '../classes/no_gate.dart';
import '../classes/and_gate.dart';

int sat1 = 0;
int sat2 = 0;
int sat3 = 0;
int sat4 = 0;
LevelHead2 v = LevelHead2("6", level6());
and_gate and1 = and_gate(height: 80, width: 80);
and_gate and2 = and_gate(height: 80, width: 80);
and_gate and3 = and_gate(height: 80, width: 80);
no_gate no1 = no_gate(height: 70, width: 70);
int no1_output = no1.activation(sat2);
int and1_output = and1.activation(a1.activate, a3.activate);
int and2_output = and2.activation(a4.activate, a5.activate);
int and3_output = and3.activation(a6.activate, a7.activate);
Bus a1 = Bus(
  activate: sat1,
  hor_length: 50,
  ver_length1: 50,
  ver_length2: 120,
  dy: -50,
);
Bus a2 = Bus(
  activate: sat2,
  hor_length: 0,
  ver_length1: 35,
  ver_length2: 0,
  dy: -35,

);
Bus a3 = Bus(
  activate: no1_output,
  hor_length: -50,
  ver_length1: -30,
  ver_length2: -30,
  dy: -30,
  dx: 2.5,
);
Bus a4 = Bus(
  activate: sat3,
  ver_length1: 50,
  ver_length2: 110,
  dy: -50,
);
Bus a5 = Bus(
  activate: sat4,
  ver_length2: -50,
  ver_length1: -110,
  hor_length: -50,
  dy: -50,
);
Bus a6 = Bus(
  activate: and1_output,
  hor_length: 160,
  ver_length1: 50,
  ver_length2: 25,
  dy: -35,
  dx: -2.5,
);
Bus a7 = Bus(
  activate: and2_output,
  hor_length: -160,
  ver_length1: -25,
  ver_length2: -50,
  dy: -40,
);
Bus a8 = Bus(
  activate: and3_output,
  ver_length1: 70,
  hor_length: 0,
  ver_length2: 0,
  dy: -60,
  dx: -2.5,
);
LED light = LED(x: a8.activate,y: 6,);
void set (){
   sat1 = 0;
   sat2 = 0;
  sat3 = 0;
   sat4 = 0;
   
  
   
  a1 = Bus(
    activate: sat1,
    hor_length: 50,
    ver_length1: 50,
    ver_length2: 120,
    dy: -50,
  );
  a2 = Bus(
    activate: sat2,
    hor_length: 0,
    ver_length1: 35,
    ver_length2: 0,
    dy: -35,

  );no1_output = no1.activation(sat2);
  a3 = Bus(
    activate: no1_output,
    hor_length: -50,
    ver_length1: -30,
    ver_length2: -30,
    dy: -30,
    dx: 2.5,
  );
  a4 = Bus(
    activate: sat3,
    ver_length1: 50,
    ver_length2: 110,
    dy: -50,
  );
  a5 = Bus(
    activate: sat4,
    ver_length2: -50,
    ver_length1: -110,
    hor_length: -50,
    dy: -50,
  ); and1_output = and1.activation(a1.activate, a3.activate);
  a6 = Bus(
    activate: and1_output,
    hor_length: 160,
    ver_length1: 50,
    ver_length2: 25,
    dy: -35,
    dx: -2.5,
  );  and2_output = and2.activation(a4.activate, a5.activate);

  a7 = Bus(
    activate: and2_output,
    hor_length: -160,
    ver_length1: -25,
    ver_length2: -50,
    dy: -40,
  );and3_output = and3.activation(a6.activate, a7.activate);
   a8 = Bus(
    activate: and3_output,
    ver_length1: 70,
    hor_length: 0,
    ver_length2: 0,
    dy: -60,
    dx: -2.5,
  );
  light = LED(x: a8.activate,y: 6,);
}
class level6 extends StatefulWidget {
  const level6({Key? key}) : super(key: key);

  @override
  State<level6> createState() => _level6State();
}

class _level6State extends State<level6> {
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
          hor_length: 50,
          ver_length1: 50,
          ver_length2: 120,
          dy: -50,
        );
        and1_output = and1.activation(a1.activate, a3.activate);
        a6 = Bus(
          activate: and1_output,
          hor_length: 160,
          ver_length1: 50,
          ver_length2: 25,
          dy: -35,
          dx: -2.5,
        );
        and3_output = and3.activation(a6.activate, a7.activate);
        a8 = Bus(
          activate: and3_output,
          ver_length1: 70,
          hor_length: 0,
          ver_length2: 0,
          dy: -60,
          dx: -2.5,
        );
      } else {
        sat1 = 1;
        a1 = Bus(
          activate: sat1,
          hor_length: 50,
          ver_length1: 50,
          ver_length2: 120,
          dy: -50,
        );
        and1_output = and1.activation(a1.activate, a3.activate);
        a6 = Bus(
          activate: and1_output,
          hor_length: 160,
          ver_length1: 50,
          ver_length2: 25,
          dy: -35,
          dx: -2.5,
        );
        and3_output = and3.activation(a6.activate, a7.activate);
        a8 = Bus(
          activate: and3_output,
          ver_length1: 70,
          hor_length: 0,
          ver_length2: 0,
          dy: -60,
          dx: -2.5,
        );
      }
      if (a8.activate == 1) {
        light = LED(x: a8.activate,y: 6,);
      } else {
        light = LED(x: a8.activate,y: 6,);
      }
    });
  }

  void test2() {
    setState(() {
      if (sat2 == 1) {
        sat2 = 0;
        a2 = Bus(
          activate: sat2,
          hor_length: 0,
          ver_length1: 35,
          ver_length2: 0,
          dy: -35,
);no1_output = no1.activation(sat2);
a3 = Bus(
  activate: no1_output,
  hor_length: -50,
  ver_length1: -30,
  ver_length2: -30,
  dy: -30,
  dx: 2.5,
);and1_output = and1.activation(a1.activate, a3.activate);
a6 = Bus(
  activate: and1_output,
  hor_length: 160,
  ver_length1: 50,
  ver_length2: 25,
  dy: -35,
  dx: -2.5,
);and3_output = and3.activation(a6.activate, a7.activate);
a8 = Bus(
  activate: and3_output,
  ver_length1: 70,
  hor_length: 0,
  ver_length2: 0,
  dy: -60,
  dx: -2.5,
);
      } else {
        sat2 = 1;
         a2 = Bus(
           activate: sat2,
           hor_length: 0,
           ver_length1: 35,
           ver_length2: 0,
           dy: -35,
);no1_output = no1.activation(sat2);
a3 = Bus(
  activate: no1_output,
  hor_length: -50,
  ver_length1: -30,
  ver_length2: -30,
  dy: -30,
  dx: 2.5,
);and1_output = and1.activation(a1.activate, a3.activate);
a6 = Bus(
  activate: and1_output,
  hor_length: 160,
  ver_length1: 50,
  ver_length2: 25,
  dy: -35,
  dx: -2.5,
);and3_output = and3.activation(a6.activate, a7.activate);
a8 = Bus(
  activate: and3_output,
  ver_length1: 70,
  hor_length: 0,
  ver_length2: 0,
  dy: -60,
  dx: -2.5,

);
      }
      if (a8.activate == 1) {
        light = LED(x: a8.activate,y: 6,);
      } else {
        light = LED(x: a8.activate,y: 6,);
      }
    });
  }
 void test3() {
    setState(() {
      if (sat3 == 1) {
        sat3 = 0;
       a4 = Bus(
         activate: sat3,
         ver_length1: 50,
         ver_length2: 110,
         dy: -50,);and2_output = and2.activation(a4.activate, a5.activate);
a7 = Bus(
  activate: and2_output,
  hor_length: -160,
  ver_length1: -25,
  ver_length2: -50,
  dy: -40,
);and3_output = and3.activation(a6.activate, a7.activate);
a8 = Bus(
  activate: and3_output,
  ver_length1: 70,
  hor_length: 0,
  ver_length2: 0,
  dy: -60,
  dx: -2.5,
);
      } else {
        sat3 = 1;
         a4 = Bus(
           activate: sat3,
           ver_length1: 50,
           ver_length2: 110,
           dy: -50,);and2_output = and2.activation(a4.activate, a5.activate);
a7 = Bus(
  activate: and2_output,
  hor_length: -160,
  ver_length1: -25,
  ver_length2: -50,
  dy: -40,
);and3_output = and3.activation(a6.activate, a7.activate);
a8 = Bus(
  activate: and3_output,
  ver_length1: 70,
  hor_length: 0,
  ver_length2: 0,
  dy: -60,
  dx: -2.5,
);
      }
      if (a8.activate == 1) {
        light = LED(x: a8.activate,y: 6,);
      } else {
        light = LED(x: a8.activate,y: 6,);
      }
    });
  }
   void test4() {
    setState(() {
      if (sat4 == 1) {
        sat4 = 0;
       a5 = Bus(
         activate: sat4,
         ver_length2: -50,
         ver_length1: -110,
         hor_length: -50,
         dy: -50,);and2_output = and2.activation(a4.activate, a5.activate);
a7 = Bus(
  activate: and2_output,
  hor_length: -160,
  ver_length1: -25,
  ver_length2: -50,
  dy: -40,
);and3_output = and3.activation(a6.activate, a7.activate);
a8 = Bus(
  activate: and3_output,
  ver_length1: 70,
  hor_length: 0,
  ver_length2: 0,
  dy: -60,
  dx: -2.5,
);
      } else {
        sat4 = 1;
         a5 = Bus(
           activate: sat4,
           ver_length2: -50,
           ver_length1: -110,
           hor_length: -50,
           dy: -50,);and2_output = and2.activation(a4.activate, a5.activate);
a7 = Bus(
  activate: and2_output,
  hor_length: -160,
  ver_length1: -25,
  ver_length2: -50,
  dy: -40,
);and3_output = and3.activation(a6.activate, a7.activate);
a8 = Bus(
  activate: and3_output,
  ver_length1: 70,
  hor_length: 0,
  ver_length2: 0,
  dy: -60,
  dx: -2.5,
);
      }
      if (a8.activate == 1) {
        light = LED(x: a8.activate,y: 6,);
      } else {
        light = LED(x: a8.activate,y: 6,);
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
            SizedBox(height: 50,),a8.show(),and3.show(),SizedBox(height: 50,),Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [Column(children: [a6.show(),and1.show(),SizedBox(height: 50,),Row(children: [Column(children: [SizedBox(height: 110,),a1.show(),button1()],),Column(children: [a3.show(),no1.show(),SizedBox(height: 30,),a2.show(),button2()],)],)],),SizedBox(width: 100,),Column(children: [a7.show(),and2.show(),SizedBox(height: 150,),Row(children: [Column(children: [a4.show(),button3()],),Column(children: [a5.show(),button4()],)],)],)],)],
        ));
  }
}
