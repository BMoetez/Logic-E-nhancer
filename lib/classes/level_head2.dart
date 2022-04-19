import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'package:logic_enhancer/main.dart';
import 'package:logic_enhancer/pages/levels.dart';

class LevelHead2 extends StatefulWidget {
  String n = '';
  Widget f = Container();
  int mov=0;

  LevelHead2(String n,Widget f,{ this.mov=5}) {
    this.n = n;
    this.f =f;
    this.mov=mov;
  }

  @override
  _LevelHead2State createState() => _LevelHead2State(this.n,this.f,mov: this.mov);
}

class _LevelHead2State extends State<LevelHead2> {
  String n = '';
  Widget f = Container();
  int mov =0;
  _LevelHead2State(String n,Widget f,{ this.mov=5}) {
    this.n = n;
    this.f = f;
    mov=mov;
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
          child: Row(
        children: [
          Align(
              alignment: Alignment.topLeft,
              child: SizedBox(
                height: 120,
                width: 120,
                child: IconButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Levels()));


                  },
                  icon: Icon(
                    Icons.arrow_back_ios_sharp,
                    size: 40,
                    color: Colors.white,
                  ),
                ),
              )),
          const Spacer(),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: Align(
              alignment: Alignment.topCenter,
              child: Text(
                "Level " + n,
                style: TextStyle(
                  fontSize: 70,
                  decoration: TextDecoration.none,
                  color: Colors.blue,
                ),
              ),
            ),
          ),
          const Spacer(),Text('MOVES LEFT:${widget.mov}',
          style: TextStyle(fontSize: 50,color: Color.fromARGB(255, 255, 255, 255)),),
          Align(
            alignment: Alignment.topRight,
            child: SizedBox(
              width: 120,
              height: 120,
              child: IconButton(
                  onPressed: () {
                    Overlay.of(context)?.insert(_getEntry(context));
                  },
                  icon: Icon(
                    Icons.menu,
                    size: 40,
                    color: Colors.white,
                  )),
            ),
          )
        ],
      )),
      color: Color.fromRGBO(0, 0, 0, 0),
    );
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
                  width: 350,
                  height: 350,
                  color: Colors.black,
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topRight,
                        child: Material(
                          child: IconButton(
                            onPressed: () => entry.remove(),
                            icon: Icon(Icons.close),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 100),
                        child: Text(
                          "Pause",
                          style: TextStyle(fontSize: 40, color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 30),
                        child: SizedBox(
                          width: 200,
                          height: 50,
                          child: OutlinedButton(
                              onPressed: () {
                                
                                Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => f),
                                  (Route<dynamic> route) => false,
                                );
                                entry.remove();
                              },
                              child: Text(
                                "Restart",
                                style: TextStyle(fontSize: 30,color: Colors.white),
                              ),
                              style: OutlinedButton.styleFrom(
                                  side: BorderSide(
                                      width: 3.0, color: Colors.white))),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                        child: SizedBox(
                          width: 200,
                          height: 50,
                          child: OutlinedButton(
                              onPressed: () {
                                  Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => f),
                                      (Route<dynamic> route) => false,
                                );
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));

                                  entry.remove();
                              },
                              child: Text(
                                "Main Menu",
                                style: TextStyle(fontSize: 30,color: Colors.white),
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
          ),
        ),
      ),
    );
    return entry;
  }
}
