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
import 'play_page (1).dart';
import 'dart:ui' as ui;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Levels(),
      theme: ThemeData(fontFamily: 'Digital7'),
    );
  }
}

class Levels extends StatefulWidget {
  const Levels({Key? key}) : super(key: key);

  @override
  State<Levels> createState() => _HomePageState();
}

class _HomePageState extends State<Levels> {
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
              Align(
                alignment: Alignment.topLeft,
                child: Material(
                  child: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => playPage()));
                      },
                      icon: Icon(
                        Icons.arrow_back_ios_sharp,
                        size: 40,
                        color: Colors.white,
                      )),
                  color: Color.fromRGBO(231, 218, 199, 0),
                ),
              ),
              Container(
                width: double.infinity,
                child: const Text(
                  'LEVELS',
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
                padding: EdgeInsets.fromLTRB(0, 150.0, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SizedBox(width: 80.0),
                        Icon(
                          Icons.lock_open,
                          color: Colors.white,
                          size: 70.0,
                        ),
                        RaisedButton(
                            onPressed: () {
                              Overlay.of(context)?.insert(_getEntry(context));
                            },
                            padding: EdgeInsets.fromLTRB(2, 20, 20, 30),
                            child: Text(
                              '1',
                              style: TextStyle(
                                fontFamily: 'Digital7',
                                color: Colors.black,
                                fontSize: 80.0,
                              ),
                            )),
                        SizedBox(width: 80.0),
                        Icon(
                          Icons.lock_outline,
                          color: Colors.white,
                          size: 80.0,
                        ),
                        RaisedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => level2()));
                            },
                            padding: EdgeInsets.fromLTRB(2, 20, 20, 30),
                            child: Text(
                              '2',
                              style: TextStyle(
                                fontFamily: 'Digital7',
                                color: Colors.black,
                                fontSize: 80.0,
                              ),
                            )),
                        SizedBox(width: 100.0),
                        Icon(
                          Icons.lock_outline,
                          color: Colors.white,
                          size: 80.0,
                        ),
                        RaisedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => level3()));
                            },
                            padding: EdgeInsets.fromLTRB(2, 20, 20, 30),
                            child: Text(
                              '3',
                              style: TextStyle(
                                fontFamily: 'Digital7',
                                color: Colors.black,
                                fontSize: 80.0,
                              ),
                            )),
                        SizedBox(width: 80.0),
                        Icon(
                          Icons.lock_outline,
                          color: Colors.white,
                          size: 80.0,
                        ),
                        RaisedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => level4()));
                            },
                            padding: EdgeInsets.fromLTRB(2, 20, 20, 30),
                            child: Text(
                              '4',
                              style: TextStyle(
                                fontFamily: 'Digital7',
                                color: Colors.black,
                                fontSize: 80.0,
                              ),
                            )),
                        SizedBox(width: 80.0),
                        Icon(
                          Icons.lock_outline,
                          color: Colors.white,
                          size: 80.0,
                        ),
                        RaisedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => level5()));
                            },
                            padding: EdgeInsets.fromLTRB(2, 20, 20, 30),
                            child: Text(
                              '5',
                              style: TextStyle(
                                fontFamily: 'Digital7',
                                color: Colors.black,
                                fontSize: 80.0,
                              ),
                            )),
                        SizedBox(width: 80.0),
                        Icon(
                          Icons.lock_outline,
                          color: Colors.white,
                          size: 80.0,
                        ),
                        RaisedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => level6()));
                            },
                            padding: EdgeInsets.fromLTRB(2, 20, 20, 30),
                            child: Text(
                              '6',
                              style: TextStyle(
                                fontFamily: 'Digital7',
                                color: Colors.black,
                                fontSize: 80.0,
                              ),
                            )),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 100.0),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0.0, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SizedBox(width: 80.0),
                        Icon(
                          Icons.lock_outline,
                          color: Colors.white,
                          size: 80.0,
                        ),
                        RaisedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => level7()));
                            },
                            padding: EdgeInsets.fromLTRB(2, 20, 20, 30),
                            child: Text(
                              '7',
                              style: TextStyle(
                                fontFamily: 'Digital7',
                                color: Colors.black,
                                fontSize: 80.0,
                              ),
                            )),
                        SizedBox(width: 80.0),
                        Icon(
                          Icons.lock_outline,
                          color: Colors.white,
                          size: 80.0,
                        ),
                        RaisedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => level8()));
                            },
                            padding: EdgeInsets.fromLTRB(2, 20, 20, 30),
                            child: Text(
                              '8',
                              style: TextStyle(
                                fontFamily: 'Digital7',
                                color: Colors.black,
                                fontSize: 80.0,
                              ),
                            )),
                        SizedBox(width: 80.0),
                        Icon(
                          Icons.lock_outline,
                          color: Colors.white,
                          size: 80.0,
                        ),
                        RaisedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => level9()));
                            },
                            padding: EdgeInsets.fromLTRB(2, 20, 20, 30),
                            child: Text(
                              '9',
                              style: TextStyle(
                                fontFamily: 'Digital7',
                                color: Colors.black,
                                fontSize: 80.0,
                              ),
                            )),
                        SizedBox(width: 80.0),
                        Icon(
                          Icons.lock_outline,
                          color: Colors.white,
                          size: 80.0,
                        ),
                        RaisedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => level10()));
                            },
                            padding: EdgeInsets.fromLTRB(2, 20, 20, 30),
                            child: Text(
                              '10',
                              style: TextStyle(
                                fontFamily: 'Digital7',
                                color: Colors.black,
                                fontSize: 80.0,
                              ),
                            )),
                        SizedBox(width: 80.0),
                        Icon(
                          Icons.lock_outline,
                          color: Colors.white,
                          size: 80.0,
                        ),
                        RaisedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => level11()));
                            },
                            padding: EdgeInsets.fromLTRB(2, 20, 20, 30),
                            child: Text(
                              '11',
                              style: TextStyle(
                                fontFamily: 'Digital7',
                                color: Colors.black,
                                fontSize: 80.0,
                              ),
                            )),
                        SizedBox(width: 80.0),
                        Icon(
                          Icons.lock_outline,
                          color: Colors.white,
                          size: 80.0,
                        ),
                        RaisedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => level12()));
                            },
                            padding: EdgeInsets.fromLTRB(2, 20, 20, 30),
                            child: Text(
                              '12',
                              style: TextStyle(
                                fontFamily: 'Digital7',
                                color: Colors.black,
                                fontSize: 80.0,
                              ),
                            )),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 100.0),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0.0, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SizedBox(width: 80.0),
                        Icon(
                          Icons.lock_outline,
                          color: Colors.white,
                          size: 80.0,
                        ),
                        RaisedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => level13()));
                            },
                            padding: EdgeInsets.fromLTRB(2, 20, 20, 30),
                            child: Text(
                              '13',
                              style: TextStyle(
                                fontFamily: 'Digital7',
                                color: Colors.black,
                                fontSize: 80.0,
                              ),
                            )),
                        SizedBox(width: 80.0),
                        Icon(
                          Icons.lock_outline,
                          color: Colors.white,
                          size: 80.0,
                        ),
                        RaisedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => level14()));
                            },
                            padding: EdgeInsets.fromLTRB(2, 20, 20, 30),
                            child: Text(
                              '14',
                              style: TextStyle(
                                fontFamily: 'Digital7',
                                color: Colors.black,
                                fontSize: 80.0,
                              ),
                            )),
                        SizedBox(width: 80.0),
                        Icon(
                          Icons.lock_outline,
                          color: Colors.white,
                          size: 80.0,
                        ),
                        RaisedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => level15()));
                            },
                            padding: EdgeInsets.fromLTRB(2, 20, 20, 30),
                            child: Text(
                              '15',
                              style: TextStyle(
                                fontFamily: 'Digital7',
                                color: Colors.black,
                                fontSize: 80.0,
                              ),
                            )),
                        SizedBox(width: 80.0),
                        Icon(
                          Icons.lock_outline,
                          color: Colors.white,
                          size: 80.0,
                        ),
                        RaisedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => level16()));
                            },
                            padding: EdgeInsets.fromLTRB(2, 20, 20, 30),
                            child: Text(
                              '16',
                              style: TextStyle(
                                fontFamily: 'Digital7',
                                color: Colors.black,
                                fontSize: 80.0,
                              ),
                            )),
                        SizedBox(width: 80.0),
                        Icon(
                          Icons.lock_outline,
                          color: Colors.white,
                          size: 80.0,
                        ),
                        RaisedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => level17()));
                            },
                            padding: EdgeInsets.fromLTRB(2, 20, 20, 30),
                            child: Text(
                              '17',
                              style: TextStyle(
                                fontFamily: 'Digital7',
                                color: Colors.black,
                                fontSize: 80.0,
                              ),
                            )),
                        SizedBox(width: 80.0),
                        Icon(
                          Icons.lock_outline,
                          color: Colors.white,
                          size: 80.0,
                        ),
                        RaisedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => level18()));
                            },
                            padding: EdgeInsets.fromLTRB(2, 20, 20, 30),
                            child: Text(
                              '18',
                              style: TextStyle(
                                fontFamily: 'Digital7',
                                color: Colors.black,
                                fontSize: 80.0,
                              ),
                            )),
                      ],
                    ),
                  ],
                ),
              ),
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
                    height: 520,
                    color: Colors.black,
                    child: Column(
                      children: [
                        Image.asset('../../assets/images/how_to_play.png'),
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: TextButton(
                              onPressed: () {
                                entry.remove();
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => level1()));
                              },
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [Text("Play",style: TextStyle(fontSize: 50),),Icon(Icons.play_arrow,size: 60,)]),
                              ),

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
