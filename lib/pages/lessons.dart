import 'package:flutter/material.dart';
import 'package:logic_enhancer/lessons/And_Lesson2.dart';
import 'package:logic_enhancer/lessons/Nand_Lesson1.dart';
import 'package:logic_enhancer/lessons/Nand_Lesson2.dart';
import 'package:logic_enhancer/lessons/Or_Lesson1.dart';
import 'package:logic_enhancer/main.dart';
import 'dart:ui' as ui;
import 'package:logic_enhancer/pages/play_page%20(1).dart';
import 'package:logic_enhancer/save.dart';
import '../lessons/And_Lesson1.dart';
import '../lessons/Nand_Lesson3.dart';
import '../lessons/Nor_Lesson1.dart';
import '../lessons/Nor_Lesson2.dart';
import '../lessons/Nor_Lesson3.dart';
import '../lessons/Or_Lesson2.dart';

class Lessons extends StatefulWidget {
  @override
  State<Lessons> createState() => _LessonsState();

}

class _LessonsState extends State<Lessons> {
  @override
  int act_but = 1;
  int slide = 1;


  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/images/background.jpg'),
        )),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Column(children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 20, 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 120, 0),
                              child: Material(
                                child: IconButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  playPage()));
                                    },
                                    icon: Icon(
                                      Icons.arrow_back_ios_sharp,
                                      size: 40,
                                      color: Colors.white,
                                    )),
                                color: Color.fromRGBO(231, 218, 199, 0),
                              ),
                            )),
                        OutlinedButton(
                            onPressed: () {
                              setState(() {
                                act_but = 1;
                              });
                            },
                            style: (act_but != 1)
                                ? OutlinedButton.styleFrom(
                                    backgroundColor: Color(colors[ind]),
                                    side: BorderSide(
                                        width: 7.0, color: Color(colors[ind])),
                                    fixedSize: const Size(300, 80))
                                : OutlinedButton.styleFrom(
                                    backgroundColor: Color(colors[ind + 1]),
                                    side: BorderSide(
                                        width: 7.0,
                                        color: Color(colors[ind + 1])),
                                    fixedSize: const Size(300, 80)),
                            child: Text(
                              'OR Gate ',
                              style: (act_but != 1)
                                  ? TextStyle(
                                      fontFamily: 'Digital7',
                                      color: Colors.white,
                                      fontSize: 50.0,
                                    )
                                  : TextStyle(
                                      fontFamily: 'Digital7',
                                      color: Colors.black,
                                      fontSize: 50.0,
                                    ),
                            )),
                        OutlinedButton(
                            onPressed: () {
                              setState(() {
                                if(save.localStorage['levels']![14]=='1')
                                act_but = 2;
                              });
                            },
                            style: (act_but != 2)
                                ? OutlinedButton.styleFrom(
                                    backgroundColor: Color(colors[ind]),
                                    side: BorderSide(
                                        width: 7.0, color: Color(colors[ind])),
                                    fixedSize: const Size(300, 80))
                                : OutlinedButton.styleFrom(
                                    backgroundColor: Color(colors[ind + 1]),
                                    side: BorderSide(
                                        width: 7.0,
                                        color: Color(colors[ind + 1])),
                                    fixedSize: const Size(300, 80)),
                            child: Text(
                              'NOR Gate',
                              style: (act_but != 2)
                                  ? TextStyle(
                                      fontFamily: 'Digital7',
                                      color: Colors.white,
                                      fontSize: 50.0,
                                    )
                                  : TextStyle(
                                      fontFamily: 'Digital7',
                                      color: Colors.black,
                                      fontSize: 50.0,
                                    ),
                            )),
                        OutlinedButton(
                            onPressed: () {
                              setState(() {
                                if(save.localStorage['levels']![9]=='1')
                                act_but = 3;
                              });
                            },
                            style: (act_but != 3)
                                ? OutlinedButton.styleFrom(
                                    backgroundColor: Color(colors[ind]),
                                    side: BorderSide(
                                        width: 7.0, color: Color(colors[ind])),
                                    fixedSize: const Size(300, 80))
                                : OutlinedButton.styleFrom(
                                    backgroundColor: Color(colors[ind + 1]),
                                    side: BorderSide(
                                        width: 7.0,
                                        color: Color(colors[ind + 1])),
                                    fixedSize: const Size(300, 80)),
                            child: Text(
                              'NAND Gate',
                              style: (act_but != 3)
                                  ? TextStyle(
                                      fontFamily: 'Digital7',
                                      color: Colors.white,
                                      fontSize: 50.0,
                                    )
                                  : TextStyle(
                                      fontFamily: 'Digital7',
                                      color: Colors.black,
                                      fontSize: 50.0,
                                    ),
                            )),
                        OutlinedButton(
                            onPressed: () {
                              setState(() {
                                if(save.localStorage['levels']![4]=='1')
                                act_but = 4;
                              });
                            },
                            style: (act_but != 4)
                                ? OutlinedButton.styleFrom(
                                    backgroundColor: Color(colors[ind]),
                                    side: BorderSide(
                                        width: 7.0, color: Color(colors[ind])),
                                    fixedSize: const Size(300, 80))
                                : OutlinedButton.styleFrom(
                                    backgroundColor: Color(colors[ind + 1]),
                                    side: BorderSide(
                                        width: 7.0,
                                        color: Color(colors[ind + 1])),
                                    fixedSize: const Size(300, 80)),
                            child: Text(
                              'AND Gate',
                              style: (act_but != 4)
                                  ? TextStyle(
                                      fontFamily: 'Digital7',
                                      color: Colors.white,
                                      fontSize: 50.0,
                                    )
                                  : TextStyle(
                                      fontFamily: 'Digital7',
                                      color: Colors.black,
                                      fontSize: 50.0,
                                    ),
                            )),
                        SizedBox(width: 35.0),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.0),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 50, 20, 30),
                child:
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        OutlinedButton(
                            onPressed: () {
                              Overlay.of(context)
                                ?.insert(_getEntry(context));
                            },
                            style: OutlinedButton.styleFrom(
                                side:
                                    BorderSide(width: 5.0, color: Colors.white),
                                fixedSize: const Size(400, 120)),
                            child: Text(
                              'LESSON I',
                              style: TextStyle(
                                fontFamily: 'Digital7',
                                color: Colors.white,
                                fontSize: 100.0,
                              ),
                            )),
                        SizedBox(height: 30.0),
                        OutlinedButton(
                            onPressed: () {
                              Overlay.of(context)
                                  ?.insert(_getEntry2(context));
                            },
                            style: OutlinedButton.styleFrom(
                                side:
                                    BorderSide(width: 5.0, color: Colors.white),
                                fixedSize: const Size(400, 120)),
                            child: Text(
                              'LESSON 2',
                              style: TextStyle(
                                fontFamily: 'Digital7',
                                color: Colors.white,
                                fontSize: 100.0,
                              ),
                            )),
                        SizedBox(height: 30,),
                        (act_but==2 || act_but==3)?OutlinedButton(
                            onPressed: () {
                              Overlay.of(context)
                                  ?.insert(_getEntry3(context));
                            },
                            style: OutlinedButton.styleFrom(
                                side:
                                BorderSide(width: 5.0, color: Colors.white),
                                fixedSize: const Size(400, 120)),
                            child: Text(
                              'LESSON 3',
                              style: TextStyle(
                                fontFamily: 'Digital7',
                                color: Colors.white,
                                fontSize: 100.0,
                              ),
                            )):SizedBox(height: 0,)
                      ],
                    ),
              ),
              SizedBox(height: 50.0),
            ])));
  }

  OverlayEntry _getEntry(context) {
    OverlayEntry entry = OverlayEntry(builder: (_) => Container());
    switch(act_but){
      case 1 :{
        entry = OverlayEntry(
          opaque: false,
          maintainState: true,
          builder: (_) => GestureDetector(onTap: () {
            
          },behavior: HitTestBehavior.translucent,child: Positioned(
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
                        child: (slide == 1)
                            ? Column(
                          children: [
                            Image.asset(
                              "../../assets/images/lessons/or_gate_lesson.PNG",
                              scale: 0.5,
                            ),
                            TextButton(
                                onPressed: () {
                                  slide = 2;
                                  entry.remove();
                                  Overlay.of(context)
                                      ?.insert(_getEntry(context));
                                },
                                child: Text(
                                  "Next",
                                  style: TextStyle(fontSize: 50),
                                ))
                          ],
                        )
                            : Column(
                          children: [
                            Image.asset(
                              "../../assets/images/lessons/or_gate_lesson1.PNG",
                              scale: 0.5,
                            ),
                            Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                TextButton(
                                    onPressed: () {
                                      slide = 1;
                                      entry.remove();
                                      Overlay.of(context)
                                          ?.insert(_getEntry(context));
                                    },
                                    child: Text("previous",
                                        style: TextStyle(fontSize: 50))),
                                TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                Or_Lesson1()));
                                    entry.remove();
                                    slide=1;
                                  },
                                  child: Text("Start",
                                      style: TextStyle(fontSize: 50)),
                                )
                              ],
                            )
                          ],
                        )),
                  ],
                ),
              ),
            ),
          ),)
        );
        break;
      }
      case 2 :{
        entry = OverlayEntry(
          opaque: false,
          maintainState: true,
          builder: (_) => GestureDetector(onTap: () {
            
          },behavior: HitTestBehavior.translucent,child: Positioned(
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
                        child: (slide == 1)
                            ? Column(
                          children: [
                            Image.asset(
                              "../../assets/images/lessons/nor_gate_lesson.PNG",
                              scale: 0.5,
                            ),
                            TextButton(
                                onPressed: () {
                                  slide = 2;
                                  entry.remove();
                                  Overlay.of(context)
                                      ?.insert(_getEntry(context));
                                },
                                child: Text(
                                  "Next",
                                  style: TextStyle(fontSize: 50),
                                ))
                          ],
                        )
                            : Column(
                          children: [
                            Image.asset(
                              "../../assets/images/lessons/nor_gate_lesson1.PNG",
                              scale: 0.5,
                            ),
                            Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                TextButton(
                                    onPressed: () {
                                      slide = 1;
                                      entry.remove();
                                      Overlay.of(context)
                                          ?.insert(_getEntry(context));
                                    },
                                    child: Text("previous",
                                        style: TextStyle(fontSize: 50))),
                                TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                Nor_Lesson1()));
                                    entry.remove();
                                    slide = 1;
                                  },
                                  child: Text("Start",
                                      style: TextStyle(fontSize: 50)),
                                )
                              ],
                            )
                          ],
                        )),
                  ],
                ),
              ),
            ),
          ),)
        );
        break;
      }
      case 3 :{
        entry = OverlayEntry(
          opaque: false,
          maintainState: true,
          builder: (_) => GestureDetector(onTap: () {
            
          },behavior: HitTestBehavior.translucent,child: Positioned(
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
                        child: (slide == 1)
                            ? Column(
                          children: [
                            Image.asset(
                              "../../assets/images/lessons/nand_gate_lesson.PNG",
                              scale: 0.5,
                            ),
                            TextButton(
                                onPressed: () {
                                  slide = 2;
                                  entry.remove();
                                  Overlay.of(context)
                                      ?.insert(_getEntry(context));
                                },
                                child: Text(
                                  "Next",
                                  style: TextStyle(fontSize: 50),
                                ))
                          ],
                        )
                            : Column(
                          children: [
                            Image.asset(
                              "../../assets/images/lessons/nand_gate_lesson1.PNG",
                              scale: 0.5,
                            ),
                            Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                TextButton(
                                    onPressed: () {
                                      slide = 1;
                                      entry.remove();
                                      Overlay.of(context)
                                          ?.insert(_getEntry(context));
                                    },
                                    child: Text("previous",
                                        style: TextStyle(fontSize: 50))),
                                TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                Nand_lesson1()));
                                    entry.remove();
                                    slide = 1;
                                  },
                                  child: Text("Start",
                                      style: TextStyle(fontSize: 50)),
                                )
                              ],
                            )
                          ],
                        )),
                  ],
                ),
              ),
            ),
          ),)
        );
        break;
      }
      case 4 :{
        entry = OverlayEntry(
          opaque: false,
          maintainState: true,
          builder: (_) => GestureDetector(onTap: () {
            
          },behavior: HitTestBehavior.translucent,child: Positioned(
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
                        child: (slide == 1)
                            ? Column(
                          children: [
                            Image.asset(
                              "../../assets/images/lessons/and_gate_lesson.PNG",
                              scale: 0.5,
                            ),
                            TextButton(
                                onPressed: () {
                                  slide = 2;
                                  entry.remove();
                                  Overlay.of(context)
                                      ?.insert(_getEntry(context));
                                },
                                child: Text(
                                  "Next",
                                  style: TextStyle(fontSize: 50),
                                ))
                          ],
                        )
                            : Column(
                          children: [
                            Image.asset(
                              "../../assets/images/lessons/and_gate_lesson1.PNG",
                              scale: 0.5,
                            ),
                            Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                TextButton(
                                    onPressed: () {
                                      slide = 1;
                                      entry.remove();
                                      Overlay.of(context)
                                          ?.insert(_getEntry(context));
                                    },
                                    child: Text("previous",
                                        style: TextStyle(fontSize: 50))),
                                TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                And_Lesson1()));
                                    entry.remove();
                                    slide=1;
                                  },
                                  child: Text("Start",
                                      style: TextStyle(fontSize: 50)),
                                )
                              ],
                            )
                          ],
                        )),
                  ],
                ),
              ),
            ),
          ),)
        );
        break;
      }
    }

    return entry;
  }


  OverlayEntry _getEntry2(context) {
    OverlayEntry entry = OverlayEntry(builder: (_) => Container());
    switch(act_but){
      case 1 :{
        entry = OverlayEntry(
          opaque: false,
          maintainState: true,
          builder: (_) => GestureDetector(onTap: () {
            
          },behavior: HitTestBehavior.translucent,child: Positioned(
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
                              "../../assets/images/lessons/or_gate_lesson2.PNG",
                              scale: 0.5,
                            ),
                            TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              Or_Lesson2()));
                                  entry.remove();
                                },
                                child: Text(
                                  "Start",
                                  style: TextStyle(fontSize: 50),
                                )),

                          ],
                        )),
                  ],
                ),
              ),
            ),
          ),)
        );
        break;
      }
      case 2 :{
        entry = OverlayEntry(
          opaque: false,
          maintainState: true,
          builder: (_) => GestureDetector(onTap: () {
            
          },child: Positioned(
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
                              "../../assets/images/lessons/nor_gate_lesson2.PNG",
                              scale: 0.5,
                            ),
                            TextButton(
                                onPressed: () {
                                  slide = 2;
                                  entry.remove();
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              Nor_Lesson2()));
                                  entry.remove();
                                },
                                child: Text(
                                  "Next",
                                  style: TextStyle(fontSize: 50),
                                ))
                          ],
                        )
                        ),
                  ],
                ),
              ),
            ),
          ),)
        );
        break;
      }
      case 3 :{
        entry = OverlayEntry(
          opaque: false,
          maintainState: true,
          builder: (_) => GestureDetector(onTap: () {
            
          },behavior: HitTestBehavior.translucent,child: Positioned(
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
                              "../../assets/images/lessons/nand_gate_lesson2.PNG",
                              scale: 0.5,
                            ),
                            TextButton(
                                onPressed: () {
                                  entry.remove();
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              Nand_lesson2()));
                                  entry.remove();
                                },
                                child: Text(
                                  "Start",
                                  style: TextStyle(fontSize: 50),
                                ))
                          ],
                        )

                        ),
                  ],
                ),
              ),
            ),
          ),)
        );
        break;
      }
      case 4 :{
        entry = OverlayEntry(
          opaque: false,
          maintainState: true,
          builder: (_) => GestureDetector(onTap: () {
            
          },behavior: HitTestBehavior.translucent,child: Positioned(
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
                              "../../assets/images/lessons/and_gate_lesson2.PNG",
                              scale: 0.5,
                            ),
                            TextButton(
                                onPressed: () {
                                  entry.remove();
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              And_Lesson2()));
                                  entry.remove();
                                },
                                child: Text(
                                  "Start",
                                  style: TextStyle(fontSize: 50),
                                ))
                          ],
                        )),
                  ],
                ),
              ),
            ),
          ),)
        );
        break;
      }
    }

    return entry;
  }


  OverlayEntry _getEntry3(context) {
    OverlayEntry entry = OverlayEntry(builder: (_) => Container());
    switch(act_but){
      case 3 :{
        entry = OverlayEntry(
          opaque: false,
          maintainState: true,
          builder: (_) => GestureDetector(onTap: () {
            
          },behavior: HitTestBehavior.translucent,child: Positioned(
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
                              "../../assets/images/lessons/nand_gate_lesson3.PNG",
                              scale: 0.5,
                            ),
                            TextButton(
                                onPressed: () {
                                  entry.remove();
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              Nand_Lesson3()));
                                  entry.remove();
                                },
                                child: Text(
                                  "Next",
                                  style: TextStyle(fontSize: 50),
                                ))
                          ],
                        )
                           ),
                  ],
                ),
              ),
            ),
          ),)
        );
        break;
      }
      case 2 :{
        entry = OverlayEntry(
          opaque: false,
          maintainState: true,
          builder: (_) => GestureDetector(onTap: () {
            
          },behavior: HitTestBehavior.translucent,child: Positioned(
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
                              "../../assets/images/lessons/nor_gate_lesson3.PNG",
                              scale: 0.5,
                            ),
                            TextButton(
                                onPressed: () {
                                  entry.remove();
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              Nor_Lesson3()));
                                  entry.remove();
                                },
                                child: Text(
                                  "Start",
                                  style: TextStyle(fontSize: 50),
                                ))
                          ],
                        )
                            ),
                  ],
                ),
              ),
            ),
          ),)
        );
        break;
      }
    }

    return entry;
  }

}


