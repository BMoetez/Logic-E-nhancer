import 'dart:async';

import 'package:flutter/material.dart';
import 'package:logic_enhancer/pages/option_page.dart';
import 'package:logic_enhancer/stages/level10.dart';
import 'package:logic_enhancer/stages/level11.dart';
import 'package:logic_enhancer/stages/level12.dart';
import 'package:logic_enhancer/stages/level13.dart';
import 'package:logic_enhancer/stages/level16.dart';
import 'package:logic_enhancer/stages/level17.dart';
import 'package:logic_enhancer/stages/level18.dart';
import 'package:logic_enhancer/stages/level6.dart';
import 'package:logic_enhancer/stages/level7.dart';
import 'package:logic_enhancer/stages/level8.dart';
import 'package:logic_enhancer/stages/level9.dart';
import 'pages/play_page (1).dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(fontFamily: 'Digital7'),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int colorindex = 0;
  late Timer timer;
  
  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        colorindex++;
        if (colorindex > 1) colorindex = 0;
      });
    });
    }
  

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
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
              Container(
                width: double.infinity,
                child: Text.rich(
                  TextSpan(children: [
                    TextSpan(text: 'LOGIC '),
                    TextSpan(
                        text: 'E',
                        style: TextStyle(
                            color: (colorindex == 1)
                                ? Colors.white
                                : Colors.blue)),
                    TextSpan(text: '-NHANCER')
                  ]),
                  style: TextStyle(
                    fontFamily: 'Digital7',
                    fontSize: 90.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 3.0,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                  padding: EdgeInsets.fromLTRB(10, 150.0, 20.0, 30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.play_circle_rounded,
                            color: Color.fromRGBO(93, 70, 47, 1),
                            size: 70.0,
                          ),
                          RaisedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => playPage()));
                              },
                              hoverColor: Color.fromRGBO(147, 112, 71, 1),
                              padding: EdgeInsets.fromLTRB(20, 20, 20, 30),
                              child: Text(
                                'play',
                                style: TextStyle(
                                  fontFamily: 'Digital7',
                                  color: Colors.black,
                                  fontSize: 70.0,
                                ),
                              ))
                        ],
                      ),
                      SizedBox(height: 45.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.miscellaneous_services,
                            color: Color.fromRGBO(93, 70, 47, 1),
                            size: 65.0,
                          ),
                          RaisedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => OptionPage()));
                              },
                              hoverColor: Color.fromRGBO(147, 112, 71, 1),
                              padding: EdgeInsets.fromLTRB(20, 20, 20, 30),
                              child: Text(
                                'Options',
                                style: TextStyle(
                                  fontFamily: 'Digital7',
                                  color: Colors.black,
                                  fontSize: 70.0,
                                ),
                              ))
                        ],
                      ),
                      SizedBox(height: 45.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.military_tech_sharp,
                            color: Color.fromRGBO(93, 70, 47, 1),
                            size: 70.0,
                          ),
                          RaisedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => OptionPage()));
                              },
                              hoverColor: Color.fromRGBO(147, 112, 71, 1),
                              padding: EdgeInsets.fromLTRB(20, 20, 20, 30),
                              child: Text(
                                'Credits',
                                style: TextStyle(
                                  fontFamily: 'Digital7',
                                  color: Colors.black,
                                  fontSize: 75.0,
                                ),
                              ))
                        ],
                      )
                    ],
                  ))
            ])));
  }
}
