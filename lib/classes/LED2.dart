// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:logic_enhancer/stages/level1.dart';
import 'package:logic_enhancer/stages/level10.dart';
import 'package:logic_enhancer/stages/level11.dart';
import 'package:logic_enhancer/stages/level12.dart';
import 'package:logic_enhancer/stages/level13.dart';
import 'package:logic_enhancer/stages/level14.dart';
import 'package:logic_enhancer/stages/level15.dart';
import 'package:logic_enhancer/stages/level16.dart';
import 'package:logic_enhancer/stages/level17.dart';
import 'package:logic_enhancer/stages/level18.dart';
import 'package:logic_enhancer/stages/level2.dart';
import 'package:logic_enhancer/stages/level3.dart';
import 'package:logic_enhancer/stages/level4.dart';
import 'package:logic_enhancer/stages/level5.dart';
import 'package:logic_enhancer/stages/level6.dart';
import 'package:logic_enhancer/stages/level7.dart';
import 'package:logic_enhancer/stages/level8.dart';
import 'package:logic_enhancer/stages/level9.dart';
import 'dart:ui' as ui;
import '../main.dart';
import 'package:lottie/lottie.dart';
import 'dart:math';

import 'endless/endlesslevel1.dart';
import 'endless/endlesslevel2.dart';
import 'endless/endlesslevel3.dart';
import 'endless/endlesslevel4.dart';
import 'endless/endlesslevel5.dart';

var random = Random();
var list=[endlesslevel1(),endlesslevel2(),endlesslevel3(),endlesslevel4(),endlesslevel5()];
var levels = [
  level1(),
  level2(),
  level3(),
  level4(),
  level5(),
  level6(),
  level7(),
  level8(),
  level9(),
  level10(),
  level11(),
  level12(),
  level13(),
  level14(),
  level15(),
  level16(),
  level17(),
  level18(),
];
int index(int x) {
  if (x < 17) {
    return x + 1;
  } else {
    return 17;
  }
}

class LED extends StatefulWidget {
  int x;
  int y;
  LED({Key? key, required this.x, required this.y}) : super(key: key);
  @override
  // ignore: no_logic_in_create_state
  State<LED> createState() => _LEDState();
}

// ignore: camel_case_types
class _LEDState extends State<LED> with SingleTickerProviderStateMixin {
  var path = [
    "assets/images/light/light no.png",
    "assets/images/light/light yes.png"
  ];
  late final AnimationController _controller;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 3),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  void didChangeDependencies() {
    precacheImage(AssetImage("assets/images/party.json"), context);

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance?.addPostFrameCallback((_) => win_page());
    return Material(
      child: Lottie.asset("assets/images/light/light1.json",
          width: 100, height: 100, controller: _controller),
      color: const Color.fromRGBO(0, 0, 0, 0),
    );
  }

  void win_page() {
    if (widget.x == 1) {
      _controller.animateTo(0.6638906666666667);
      Future.delayed(Duration(seconds: 3), (() {
        print(_controller.value);
        Overlay.of(context)?.insert(_getEntry(context));
      }));
    }
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Lottie.asset(
                    "assets/images/party.json",
                    width: 500,
                    height: 500),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 350,
                      height: 350,
                      color: Colors.black,
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 0, 100),
                            child: Text(
                              "Good Job",
                              style:
                                  TextStyle(fontSize: 40, color: Colors.green),
                            ),
                          ),
                          (index(widget.y) != 18)
                              ? Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                                  child: SizedBox(
                                    width: 230,
                                    height: 50,
                                    child: OutlinedButton(
                                        onPressed: () {
                                          Navigator.pop(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      levels[widget.y - 1]));
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) => levels[
                                                      index(widget.y - 1)]));
                                          entry.remove();
                                        },
                                        child: Text(
                                          "Next Level",
                                          style: TextStyle(
                                              fontSize: 30,
                                              color: Colors.white),
                                        ),
                                        style: OutlinedButton.styleFrom(
                                            side: BorderSide(
                                                width: 3.0,
                                                color: Colors.white))),
                                  ),
                                )
                              : Spacer(),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                            child: SizedBox(
                              width: 230,
                              height: 50,
                              child: OutlinedButton(
                                  onPressed: () {
                                    Navigator.pushAndRemoveUntil(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              levels[widget.y - 1]),
                                      (Route<dynamic> route) => false,
                                    );
                                    entry.remove();
                                  },
                                  child: Text(
                                    "Restart Level",
                                    style: TextStyle(
                                        fontSize: 30, color: Colors.white),
                                  ),
                                  style: OutlinedButton.styleFrom(
                                      side: BorderSide(
                                          width: 3.0, color: Colors.white))),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                            child: SizedBox(
                              width: 230,
                              height: 50,
                              child: OutlinedButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => HomePage()));
                                    entry.remove();
                                  },
                                  child: Text(
                                    "Main Menu",
                                    style: TextStyle(
                                        fontSize: 30, color: Colors.white),
                                  ),
                                  style: OutlinedButton.styleFrom(
                                      side: BorderSide(
                                          width: 3.0, color: Colors.white))),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Lottie.asset(
                  'assets/images/party.json',
                  width: 500,
                  height: 500,
                )
              ],
            ),
          ),
        ),
      ),
    );
    return entry;
  }
}
