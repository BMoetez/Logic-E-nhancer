// ignore_for_file: use_key_in_widget_constructors, prefer_const_literals_to_create_immutables
import 'package:logic_enhancer/classes/endless/endlesslevel2.dart';
import 'package:logic_enhancer/classes/endless/endlesslevel3.dart';
import 'package:logic_enhancer/classes/endless/endlesslevel4.dart';
import 'package:logic_enhancer/classes/endless/endlesslevel5.dart';
import 'package:logic_enhancer/save.dart';

import '../classes/endless/endlesslevel1.dart';
import 'package:flutter/material.dart';
import 'package:logic_enhancer/pages/lessons.dart';
import '../main.dart';
import 'levels.dart';
import 'dart:math';
import 'dart:ui' as ui;

var rand = Random();
int t = rand.nextInt(5);
var list = [
  endlesslevel1(),
  endlesslevel2(),
  endlesslevel3(),
  endlesslevel4(),
  endlesslevel5()
];

// ignore: camel_case_types
class playPage extends StatefulWidget {
  @override
  State<playPage> createState() => _playPageState();
}

class _playPageState extends State<playPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/background.jpg"),
                fit: BoxFit.cover)),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Material(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(5, 10, 10, 10),
                  child: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage()));
                      },
                      icon: Icon(
                        Icons.arrow_back_ios_sharp,
                        size: 35,
                        color: Colors.white,
                      )),
                ),
                color: Color.fromRGBO(231, 218, 199, 0),
              ),
            ),
            const Text(
              "play",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 80,
                  decoration: TextDecoration.none,
                  fontFamily: 'Digital7'),
            ),
            SizedBox(height: 180),
            SizedBox(
              width: 500,
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Levels()));
                },
                textColor: Colors.black,
                color: Color(colors[ind]),
                hoverColor: Color(colors[ind+1]),
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.gamepad_sharp,
                      size: 40,
                      color: Colors.white,
                    ),
                    SizedBox(width: 20),
                    const Text(
                      "level mode",
                      style: TextStyle(fontSize: 40),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 40),
            SizedBox(
              width: 500,
              child: RaisedButton(
                onPressed: () {
                  if(save.getvalue('levels')[17]=='1'){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => list[t]));}
                  else {
                    Overlay.of(context)?.insert(_getEntry(context));
                  }

                  },
                textColor: Colors.black,
                color: Color(colors[ind]),
                hoverColor: Color(colors[ind+1]),
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.all_inclusive,
                      size: 40,
                      color: Colors.white,
                    ),
                    SizedBox(width: 20),
                    const Text(
                      "endless mode",
                      style: TextStyle(fontSize: 40),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 40),
            SizedBox(
              width: 500,
              child: RaisedButton(
                onPressed: () {
                  if(save.getvalue('levels')[1]=="1")
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Lessons()));
else
                  Overlay.of(context)?.insert(_getEntry2(context));

                },
                textColor: Colors.black,
                color: Color(colors[ind]),
                hoverColor: Color(colors[ind+1]),
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.book,
                      size: 40,
                      color: Colors.white,
                    ),
                    SizedBox(width: 20),
                    const Text(
                      "learning mode",
                      style: TextStyle(fontSize: 40),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 40),
            SizedBox(
              width: 500,
              child: RaisedButton(
                onPressed: () {},
                textColor: Colors.black,
                color: Color(colors[ind]),
                hoverColor: Color(colors[ind+1]),
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.castle_outlined,
                      size: 40,
                      color: Colors.white,
                    ),
                    SizedBox(width: 20),
                    const Text(
                      "build mode",
                      style: TextStyle(fontSize: 40),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 40),
          ],
        ));
  }

  OverlayEntry _getEntry(context) {
    OverlayEntry entry = OverlayEntry(builder: (_) => Container());

    entry = OverlayEntry(
        opaque: false,
        maintainState: true,
        builder: (_) => GestureDetector(
          onTap: () {},
          behavior: HitTestBehavior.translucent,
          child: Positioned(
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
                      width: 350,
                      height: 350,
                      color: Colors.black,
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.topRight,
                            child: Material(
                              child: IconButton(
                                onPressed: () {
                                  entry.remove();
                                },
                                icon: Icon(Icons.close),
                              ),
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.fromLTRB(20, 60, 20, 100),
                              child: Text("Complete Level Mode to Unlock this mode",style: TextStyle(color: Colors.white,fontSize: 30,height: 1.2),textAlign: TextAlign.center,)
                          ),                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
    return entry;
  }

  OverlayEntry _getEntry2(context) {
    OverlayEntry entry = OverlayEntry(builder: (_) => Container());

    entry = OverlayEntry(
        opaque: false,
        maintainState: true,
        builder: (_) => GestureDetector(
          onTap: () {},
          behavior: HitTestBehavior.translucent,
          child: Positioned(
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
                      width: 350,
                      height: 350,
                      color: Colors.black,
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.topRight,
                            child: Material(
                              child: IconButton(
                                onPressed: () {
                                  entry.remove();
                                },
                                icon: Icon(Icons.close),
                              ),
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.fromLTRB(20, 60, 20, 100),
                              child: Text("Play level 1 to unlock this mode",style: TextStyle(color: Colors.white,fontSize: 30,height: 1.2),textAlign: TextAlign.center,)
                          ),                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
    return entry;
  }
}
