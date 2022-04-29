// ignore_for_file: use_key_in_widget_constructors, prefer_const_literals_to_create_immutables
import 'package:logic_enhancer/classes/endless/endlesslevel2.dart';
import 'package:logic_enhancer/classes/endless/endlesslevel3.dart';
import 'package:logic_enhancer/classes/endless/endlesslevel4.dart';
import 'package:logic_enhancer/classes/endless/endlesslevel5.dart';

import '../classes/endless/endlesslevel1.dart';
import 'package:flutter/material.dart';
import 'package:logic_enhancer/pages/lessons.dart';
import '../main.dart';
import 'levels.dart';
import 'dart:math';

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
                onPressed: () {Navigator.push(context,
                      MaterialPageRoute(builder: (context) => list[t]));},
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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Lessons()));
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
}
