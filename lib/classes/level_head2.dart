import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'package:logic_enhancer/main.dart';
import 'package:logic_enhancer/pages/levels.dart';
import 'LED2.dart';
bool hovering = false;
class LevelHead2 extends StatefulWidget {
  String n = '';
  Widget f = Container();
  int mov=0;
  LED light = LED(x: 0, y: 1);

  LevelHead2(String n,Widget f,LED l,{ this.mov=5}) {
    this.n = n;
    this.f =f;
    this.mov=mov;
    this.light = l;
  }

  @override
  _LevelHead2State createState() => _LevelHead2State(this.n,this.f);
}

class _LevelHead2State extends State<LevelHead2> {
  String n = '';
  Widget f = Container();
  _LevelHead2State(String n,Widget f) {
    this.n = n;
    this.f = f;
  }
  void losepage(){
    print(widget.light.x);
    if(widget.mov==0 && widget.light.x==0){
      WidgetsBinding.instance?.addPostFrameCallback(
              (_) => Overlay.of(context)?.insert(_getEntry3(context)));
    }
  }

  @override
  Widget build(BuildContext context) {
    losepage();
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Levels()));
                  },
                  icon: Icon(
                    Icons.arrow_back_ios_sharp,
                    size: 40,
                    color: Color(colors[ind+1]),
                  ),
                ),
              )),
          Align(
              alignment: Alignment.topLeft,
              child: SizedBox(
                width: 280,
                child: Text(
                  'MOVES LEFT:${widget.mov}',
                  style: TextStyle(
                      fontSize: 50, color: Color.fromARGB(255, 255, 255, 255)),
                ),
              )),
          Spacer(),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 10, 150, 0),
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
          Spacer(),
          IgnorePointer(
            ignoring: hovering,
            child: Align(
                alignment: Alignment.topRight,
                child: SizedBox(
                  width: 120,
                  height: 120,
                  child: IconButton(
                      onPressed: () {
                        Overlay.of(context)?.insert(_getEntry2(context));
                        setState(() {
                          hovering = !hovering;
                        });
                      },
                      icon: Icon(
                        Icons.question_mark_rounded,
                        size: 40,
                        color: Colors.yellow,
                      )),
                )),
          ),
          IgnorePointer(
            ignoring: hovering,
            child: Align(
              alignment: Alignment.topRight,
              child: SizedBox(
                width: 120,
                height: 120,
                child: IconButton(
                    onPressed: () {
                      Overlay.of(context)?.insert(_getEntry(context));
                      setState(() {
                          hovering = !hovering;
                        });
                    },
                    icon: Icon(
                      Icons.menu,
                      size: 40,
                      color: Color(colors[ind+1]),
                    )),
              )
          ),)
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
                                      setState(() {
                                        hovering = !hovering;
                                      });
                                    },
                                    icon: Icon(Icons.close),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 10, 0, 100),
                                child: Text(
                                  "Pause",
                                  style: TextStyle(
                                      fontSize: 40, color: Colors.white),
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
                                        setState(() {
                                        hovering = !hovering;
                                      });
                                        entry.remove();
                                      },
                                      child: Text(
                                        "Restart",
                                        style: TextStyle(
                                            fontSize: 30, color: Colors.white),
                                      ),
                                      style: OutlinedButton.styleFrom(
                                          side: BorderSide(
                                              width: 3.0,
                                              color: Colors.white))),
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
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    HomePage()));
setState(() {
                                        hovering = !hovering;
                                      });
                                        entry.remove();
                                      },
                                      child: Text(
                                        "Main Menu",
                                        style: TextStyle(
                                            fontSize: 30, color: Colors.white),
                                      ),
                                      style: OutlinedButton.styleFrom(
                                          side: BorderSide(
                                              width: 3.0,
                                              color: Colors.white))),
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
                          width: 500,
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
                                      setState(() {
                                        hovering = !hovering;
                                      });
                                    },
                                    icon: Icon(Icons.close),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 10, 0, 100),
                                child: Text(
                                  "HINT",
                                  style: TextStyle(
                                      fontSize: 40, color: Colors.white),
                                ),
                              ),
                              Padding(
                                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                                  child: Text(
                                    "Click On the logic gate to find out how it works",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 30,
                                        height: 1.2),
                                    textAlign: TextAlign.center,
                                  )),
                            ],
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

  OverlayEntry _getEntry3(context) {
    OverlayEntry entry = OverlayEntry(builder: (_) => Container());

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
                  width: 500,
                  height: 350,
                  color: Colors.black,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 100),
                        child: Text(
                          "Oh No ",
                          style: TextStyle(fontSize: 100, color: Colors.red),
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.fromLTRB(20, 0, 20, 100),
                          child: Text("No moves left. Try again",style: TextStyle(color: Colors.white,fontSize: 30,height: 1.2),textAlign: TextAlign.center,)
                      ),
                      TextButton(onPressed: (){Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) => f),
                            (Route<dynamic> route) => false,
                      );
                      entry.remove();}, child: Text("Try Again",style: TextStyle(fontSize: 50),))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),)
    );
    return entry;
  }
}
