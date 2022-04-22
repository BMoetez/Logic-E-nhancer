import 'package:flutter/material.dart';
import 'package:logic_enhancer/lessons/Or_Lesson1.dart';
import 'dart:ui' as ui;

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
                padding: EdgeInsets.fromLTRB(180, 0, 20, 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        OutlinedButton(
                            onPressed: () {
                              setState(() {
                                act_but = 1;
                              });
                            },
                            style: (act_but != 1)
                                ? OutlinedButton.styleFrom(
                                    side: BorderSide(
                                        width: 7.0, color: Colors.white),
                                    fixedSize: const Size(300, 80))
                                : OutlinedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    side: BorderSide(
                                        width: 7.0, color: Colors.white),
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
                                act_but = 2;
                              });
                            },
                            style: (act_but != 2)
                                ? OutlinedButton.styleFrom(
                                    side: BorderSide(
                                        width: 7.0, color: Colors.white),
                                    fixedSize: const Size(300, 80))
                                : OutlinedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    side: BorderSide(
                                        width: 7.0, color: Colors.white),
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
                                act_but = 3;
                              });
                            },
                            style: (act_but != 3)
                                ? OutlinedButton.styleFrom(
                                    side: BorderSide(
                                        width: 7.0, color: Colors.white),
                                    fixedSize: const Size(300, 80))
                                : OutlinedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    side: BorderSide(
                                        width: 7.0, color: Colors.white),
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
                                act_but = 4;
                              });
                            },
                            style: (act_but != 4)
                                ? OutlinedButton.styleFrom(
                                    side: BorderSide(
                                        width: 7.0, color: Colors.white),
                                    fixedSize: const Size(300, 80))
                                : OutlinedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    side: BorderSide(
                                        width: 7.0, color: Colors.white),
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
                        OutlinedButton(
                            onPressed: () {},
                            style: OutlinedButton.styleFrom(
                                side:
                                    BorderSide(width: 7.0, color: Colors.white),
                                fixedSize: const Size(80, 80)),
                            child: Text(
                              'X',
                              style: TextStyle(
                                fontFamily: 'Digital7',
                                color: Colors.white,
                                fontSize: 85.0,
                              ),
                            )),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.0),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 50, 20, 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        OutlinedButton(
                            onPressed: () {
                              switch (act_but) {
                                case 1:
                                  {
                                    Overlay.of(context)
                                        ?.insert(_getEntry(context));
                                  }
                                  break;
                                case 2:
                                  {
                                    Overlay.of(context)
                                        ?.insert(_getEntry2(context));
                                  }
                                  break;
                                case 3:
                                  {
                                    Overlay.of(context)
                                        ?.insert(_getEntry3(context));
                                  }
                                  break;
                                case 4:
                                  {
                                    Overlay.of(context)
                                        ?.insert(_getEntry4(context));
                                  }
                                  break;
                              }
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
                        SizedBox(width: 650.0),
                        OutlinedButton(
                            onPressed: () {},
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
                            ))
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50.0),
              Padding(
                padding: EdgeInsets.fromLTRB(8, 20, 20, 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        OutlinedButton(
                            onPressed: () {},
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
                            )),
                        SizedBox(width: 650.0),
                        OutlinedButton(
                            onPressed: () {},
                            style: OutlinedButton.styleFrom(
                                side:
                                    BorderSide(width: 5.0, color: Colors.white),
                                fixedSize: const Size(400, 120)),
                            child: Text(
                              'LESSON 4',
                              style: TextStyle(
                                fontFamily: 'Digital7',
                                color: Colors.white,
                                fontSize: 100.0,
                              ),
                            ))
                      ],
                    ),
                  ],
                ),
              )
            ])));
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
                                    Overlay.of(context)?.insert(_getEntry(context));

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
                                "../../assets/images/lessons/or_gate_lesson2.PNG",
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
                                        Overlay.of(context)?.insert(_getEntry(context));

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
      ),
    );
    return entry;
  }

  OverlayEntry _getEntry2(context) {
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
                              Overlay.of(context)?.insert(_getEntry2(context));

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
                          "../../assets/images/lessons/nor_gate_lesson2.PNG",
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
                                  Overlay.of(context)?.insert(_getEntry2(context));

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
      ),
    );
    return entry;
  }

  OverlayEntry _getEntry3(context) {
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
                              Overlay.of(context)?.insert(_getEntry3(context));

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
                          "../../assets/images/lessons/nand_gate_lesson2.PNG",
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
                                  Overlay.of(context)?.insert(_getEntry3(context));

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
      ),
    );
    return entry;
  }

  OverlayEntry _getEntry4(context) {
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
                              Overlay.of(context)?.insert(_getEntry4(context));

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
                          "../../assets/images/lessons/and_gate_lesson2.PNG",
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
                                  Overlay.of(context)?.insert(_getEntry4(context));

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
      ),
    );
    return entry;
  }
}
